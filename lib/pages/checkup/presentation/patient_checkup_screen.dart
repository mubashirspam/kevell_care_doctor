import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math' as m;

import 'package:dr_kevell/features/checkup/presentation/end_appoinment_report_screen.dart';
import 'package:dr_kevell/features/checkup/presentation/ecg_widget.dart';
import 'package:dr_kevell/features/checkup/presentation/gsr_widget.dart';
import 'package:dr_kevell/settings/value/constant.dart';

import 'package:flutter/material.dart';
import 'package:dr_kevell/features/checkup/presentation/temparature_widgtet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:sliver_tools/sliver_tools.dart';
import '../../../features/home/data/models/waiting_patient_model.dart';
import '../../../settings/api/endpoints.dart';
import '../../../core/helper/alert.dart';
import '../../../core/helper/toast.dart';
import '../../../features/checkup/presentation/bloc/checkup_bloc.dart';
import '../../../features/checkup/presentation/blood_pressure_widget.dart';
import '../../../features/checkup/presentation/pause_and_submit_widget.dart';
import '../../../features/checkup/presentation/postion_widget.dart';
import '../../../features/checkup/presentation/spo_widget.dart';
import '../../../features/checkup/presentation/unloack.dart';
import '../../../features/checkup/presentation/checkup_header.dart';

import '../../../features/checkup/presentation/widgets/ecg_graph.dart';
import '../../../features/video_call/service/signaling_service.dart';

class PatientCheckupScreen extends StatefulWidget {
  static const routeName = '/patient-checup-screen';

  final WaitingPatient checkupDetalis;

  const PatientCheckupScreen({
    super.key,
    required this.checkupDetalis,
  });

  @override
  State<PatientCheckupScreen> createState() => _PatientCheckupScreenState();
}

class _PatientCheckupScreenState extends State<PatientCheckupScreen> {
  MqttServerClient? _client;

  bool isLoading = false;
  bool isConnected = false;
  bool isUnloacked = false;
  bool isUnloacking = false;

  bool isAnalysisended = false;

  String deviceId = "";

  bool tReading = false;
  bool sp02Reading = false;
  bool ecgReading = false;
  bool gsrReading = false;
  bool postionReading = false;
  bool bpReading = false;

  bool tLoading = false;
  bool sp02Loading = false;
  bool ecgLoading = false;
  bool gsrLoading = false;
  bool postionLoading = false;
  bool bpLoading = false;

  Map<String, dynamic> dataMap = {};

  String temparature = "0.00";
  String sop2 = "0.00";
  String heartBeat = "0";
  String position = "";
  Map<String, String> bp = {"bpsys": "0", "bpdia": "0", "bpplus": "0"};

  int ecgIndex = 0;

  List<ECGData> ecgData = [];
  List<int> voltageValues = [];

  List<ECGData> gsrData = [];
  List<int> gsrVoltageValues = [];

  final String broker = "broker.hivemq.com";
  final int port = 1883;
  final String username = "";
  final String password = "";
  final String clientId =
      "kevellApp${m.Random().nextInt(99999)}_${m.Random().nextInt(8888)}";

  void initializeMQTTClient() {
    _client = MqttServerClient.withPort(broker, clientId, port);
    _client!.keepAlivePeriod = 20;
    _client!.onDisconnected = onDisconnected;
    _client!.secure = false;
    _client!.websocketProtocols = MqttClientConstants.protocolsSingleDefault;
    _client!.logging(on: true);
    _client!.onConnected = onConnected;
    _client!.onSubscribed = onSubscribed;
    _client!.onUnsubscribed = onUnsubscribed;

    final MqttConnectMessage connMess = MqttConnectMessage()
        .withWillTopic('willtopic')
        .withWillMessage('Will message')
        .startClean()
        .withWillQos(MqttQos.atLeastOnce);
    _client!.connectionMessage = connMess;
    log('EXAMPLE::kevell client connecting....');
  }

  Future<void> connect() async {
    try {
      setState(() => isLoading = true);
      await _client!.connect(username, password);
    } on NoConnectionException catch (e) {
      log('KevellCare :_client exception - $e');
      disconnect();
    } on SocketException catch (e) {
      log('KevellCare :socket exception - $e');
      disconnect();
    } finally {
      setState(() => isLoading = false);
    }
  }

  void disconnect() {
    log('Disconnected');
    _client!.disconnect();

    setState(() => isConnected = false);
  }

  void publishMy(Map payload, String to) {
    final MqttClientPayloadBuilder builder = MqttClientPayloadBuilder();
    builder.addString(json.encode(payload));

    _client!.publishMessage(to, MqttQos.exactlyOnce, builder.payload!);
  }

  void onSubscribed(String topic) {
    log('EXAMPLE::Subscription confirmed for topic $topic');
    setState(() => isConnected = true);
  }

  void onUnsubscribed(String? topic) {
    log('EXAMPLE::onUnsubscribed confirmed for topic $topic');

    setState(() {
      isConnected = false;
      isUnloacked = false;
    });
  }

  void onConnected() {
    _client!.updates!.listen((List<MqttReceivedMessage<MqttMessage>> c) {
      final MqttPublishMessage recMess = c[0].payload as MqttPublishMessage;
      setState(() {
        dataMap = json.decode(
            MqttPublishPayload.bytesToStringAsString(recMess.payload.message));
// ********************************** unloack **********************************//
// ********************************** unloack **********************************//

        if (dataMap['state'] == "unlock") {
          isUnloacking = false;
          isUnloacked = true;
          deviceId = dataMap['id'];

// ********************************** Temprature **********************************//
// ********************************** Temprature **********************************//
        } else if (dataMap['number'] == "2" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"] == "$appointmentID") {
          isUnloacked = true;
          tLoading = false;

          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "reading") {
            temparature = dataMap['data']['content'].toString();
            tReading = true;
          }
          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "result") {
            tReading = false;
          }

          log(temparature);

// ********************************** Analysis Ended **********************************//
// ********************************** Analysis Ended **********************************//
        } else if (dataMap['command'] == "alert" &&
            dataMap['value'] == "end_ok") {
          log("Analysis Ended");

          isAnalysisended = true;

          context.read<CheckupBloc>().add(
                CheckupEvent.endAppoinment(
                  appoinmentId: widget.checkupDetalis.appointmentId.toString(),
                  patientId: widget.checkupDetalis.patientId.toString(),
                ),
              );

// ********************************** position **********************************//
// ********************************** position **********************************//
        } else if (dataMap['number'] == "4" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"] == "$appointmentID") {
          isUnloacked = true;
          postionLoading = false;

          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "reading") {
            if (dataMap['data']['content'].toString() == "1") {
              position = "Standing";
            }
            if (dataMap['data']['content'].toString() == "2") {
              position = "Lying";
            }
            if (dataMap['data']['content'].toString() == "3") {
              position = "Leftside-lying";
            }
            if (dataMap['data']['content'].toString() == "4") {
              position = "Rightside-Lying";
            }

            postionReading = true;
          }
          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "result") {
            postionReading = false;
          }

          log(position);

// ********************************** spo2 **********************************//
// ********************************** spo2 **********************************//
        } else if (dataMap['number'] == "3" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"] == "$appointmentID") {
          isUnloacked = true;
          sp02Loading = false;

          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "reading") {
            sop2 = dataMap['data']['content'].toString();
            heartBeat = dataMap['data']['heart_rate'].toString();

            sp02Reading = true;
          }
          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "result") {
            sp02Reading = false;
          }

          log(sop2);

// ********************************** bp **********************************//
// ********************************** bp **********************************//
//
        } else if (dataMap['number'] == "5" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"] == "$appointmentID") {
          isUnloacked = true;
          bpLoading = false;

          if (dataMap['data']['type'] == "reading") {
            bp["bpsys"] = dataMap['data']['BpsysValue'].toString();
            bp["bpdia"] = dataMap['data']['BpDiaValue'].toString();
            bp["bpplus"] = dataMap['data']['BpPulseValue'].toString();

            bpReading = true;
          }
          if (dataMap['data']['type'] == "result") {
            bp["bpsys"] = dataMap['data']['BpsysValue'].toString();
            bp["bpdia"] = dataMap['data']['BpDiaValue'].toString();
            bp["bpplus"] = dataMap['data']['BpPulseValue'].toString();
            bpReading = false;
          }

          log(bp.toString());

// ********************************** ecg **********************************//
// ********************************** ecg **********************************//
        } else if (dataMap['number'] == "6" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"] == "$appointmentID") {
          isUnloacked = true;
          ecgLoading = false;

          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "reading") {
            // ecg = dataMap['data']['content'].toString();
            voltageValues.clear();
            ecgData.clear();

            voltageValues = dataMap['data']['content']
                .toString()
                .split(',')
                .where((element) => element.isNotEmpty)
                .map((e) => int.parse(e))
                .toList();
            for (int i = 0; i < voltageValues.length; i++) {
              ecgIndex++;

              ecgData.add(ECGData(
                time: ecgIndex,
                voltage: voltageValues[i],
              ));
            }

            ecgReading = true;
          }
          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "result") {
            ecgReading = false;
          }
        } else if (dataMap['number'] == "8" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"] == "$appointmentID") {
          isUnloacked = true;
          gsrLoading = false;

          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "reading") {
            // ecg = dataMap['data']['content'].toString();
            gsrVoltageValues.clear();
            gsrData.clear();

            gsrVoltageValues = dataMap['data']['content']
                .toString()
                .split(',')
                .where((element) => element.isNotEmpty)
                .map((e) => int.parse(e))
                .toList();
            for (int i = 0; i < gsrVoltageValues.length; i++) {
              ecgIndex++;

              gsrData.add(ECGData(
                time: ecgIndex,
                voltage: gsrVoltageValues[i],
              ));
            }

            gsrReading = true;
          }
          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "result") {
            gsrReading = false;
          }
        } else {
          isUnloacking = false;
        }
      });
    });
  }

  void subScribeTo(String topic) {
    _client!.subscribe(topic, MqttQos.atLeastOnce);
  }

  /// Unsubscribe from a topic
  void unSubscribe(String topic) {
    _client!.unsubscribe(topic);
  }

  void onDisconnected() {
    log('EXAMPLE::OnDisconnected client callback - Client disconnection');
    if (_client!.connectionStatus!.returnCode ==
        MqttConnectReturnCode.noneSpecified) {
      log('EXAMPLE::OnDisconnected callback is solicited, this is correct');
    }
  }

  Timer? _timer;
  int _secondsRemaining = 10;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_secondsRemaining < 1) {
            timer.cancel();
            // Timer is done, add any desired actions here.
            isUnloacking = false;
          } else {
            _secondsRemaining--;
          }
        },
      ),
    );
  }

  int patientID = 0;
  int doctorID = 0;
  int appointmentID = 0;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    patientID = widget.checkupDetalis.patientId!;
    doctorID = widget.checkupDetalis.doctorId!;
    appointmentID = widget.checkupDetalis.appointmentId!;
    initializeMQTTClient();
    connect().then((value) => subScribeTo("KC_EC94CB6F61DC/app"));

    SignallingService.instance.init(
      websocketUrl: ApiEndPoints.websocketUrl,
      selfCallerID: doctorID.toString(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // log("paitentCallerId: $patientID");
    // log("selfCallerId: $doctorID");

    return Scaffold(
      // appBar: AppBar(
      //   leading: InkWell(
      //     onTap: () => Navigator.pop(context),
      //     child: Container(
      //       margin: const EdgeInsets.all(10),
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           color: context.theme.secondary),
      //       child: Center(
      //         child: Icon(
      //           Icons.chevron_left,
      //           color: context.theme.primary,
      //         ),
      //       ),
      //     ),
      //   ),
      //   backgroundColor: context.theme.primary,
      //   centerTitle: false,
      // ),
            //  key: scaffoldMessengerKey,
      body: CustomScrollView(
        slivers: [
          SliverPinnedHeader(
            child: CheckupHeaderWidget(
              name: widget.checkupDetalis.name ??"No name found",
                 type: widget.checkupDetalis.type ??"No case found",
              imageUrl:widget.checkupDetalis.profileImagelink??imageUrlForDummy,
              paitentCallerId: patientID.toString(),
              selfCallerId: doctorID.toString(),
            ),
          ),
          MultiSliver(children: [
            UnloackWidget(
              id: deviceId,
              isConnected: isConnected,
              isUnloacking: isUnloacking,
              isLoading: isLoading,
              isUnloacked: isUnloacked,
              onpressed: () async {
                initializeMQTTClient();
                await connect()
                    .then((value) => subScribeTo("KC_EC94CB6F61DC/app"));
              },
              onChanged: isConnected
                  ? (p0) {
                      setState(() => isUnloacking = true);
                      startTimer();
                      publishMy({
                        "id": "KC_EC94CB6F61DC",
                        "patientID": patientID,
                        "doctorID": doctorID,
                        "appointmentID": appointmentID,
                        "type": "Doctor",
                        "command": "unlock",
                        "number": 0,
                        "date": DateTime.now().millisecondsSinceEpoch
                      }, "KC_EC94CB6F61DC/device");
                    }
                  : isUnloacked
                      ? (d) {
                          unSubscribe("KC_EC94CB6F61DC/app");
                        }
                      : (p0) {},
            ),
            TepamratureWidget(
              isReading: tReading,
              isLoading: tLoading,
              onpress: isUnloacked
                  ? () {
                      setState(() => tLoading = true);
                      publishMy({
                        "id": "KC_EC94CB6F61DC",
                        "patientID": patientID,
                        "doctorID": doctorID,
                        "appointmentID": appointmentID,
                        "type": "Doctor",
                        "command": "device",
                        "number": 2,
                        "date": DateTime.now().millisecondsSinceEpoch
                      }, "KC_EC94CB6F61DC/device");
                    }
                  : () => Toast.showToast(
                      context: context, message: "Please Unlock"),
              temparature: temparature,
            ),
            Spo2Widget(
              isReading: sp02Reading,
              heartBeat: heartBeat,
              isLoading: sp02Loading,
              spo2: sop2,
              onpress: isUnloacked
                  ? () {
                      setState(() => sp02Loading = true);
                      publishMy({
                        "id": "KC_EC94CB6F61DC",
                        "patientID": patientID,
                        "doctorID": doctorID,
                        "appointmentID": appointmentID,
                        "type": "Doctor",
                        "command": "device",
                        "number": 3,
                        "date": DateTime.now().millisecondsSinceEpoch
                      }, "KC_EC94CB6F61DC/device");
                    }
                  : () => Toast.showToast(
                      context: context, message: "Please Unlock"),
            ),
            BloodPressureWidget(
                isLoading: bpLoading,
                onpress: isUnloacked
                    ? () {
                        setState(() => bpLoading = true);
                        publishMy({
                          "id": "KC_EC94CB6F61DC",
                          "patientID": patientID,
                          "doctorID": doctorID,
                          "appointmentID": appointmentID,
                          "type": "Doctor",
                          "command": "device",
                          "number": 5,
                          "date": DateTime.now().millisecondsSinceEpoch
                        }, "KC_EC94CB6F61DC/device");
                      }
                    : () => Toast.showToast(
                        context: context, message: "Please Unlock"),
                bp: bp["bpsys"]!,
                isReading: bpReading,
                bpdia: bp["bpdia"]!,
                bpplus: bp["bpplus"]!),
            EcgWidget(
              data: ecgData,
              isReading: ecgReading,
              isLoading: ecgLoading,
              onpress: isUnloacked
                  ? () {
                      setState(() => ecgLoading = true);
                      publishMy({
                        "id": "KC_EC94CB6F61DC",
                        "patientID": patientID,
                        "doctorID": doctorID,
                        "appointmentID": appointmentID,
                        "type": "Doctor",
                        "command": "device",
                        "number": 6,
                        "date": DateTime.now().millisecondsSinceEpoch
                      }, "KC_EC94CB6F61DC/device");
                    }
                  : () => Toast.showToast(
                      context: context, message: "Please Unlock"),
            ),
            GSRgWidget(
              isReading: gsrReading,
              data: gsrData,
              isLoading: gsrLoading,
              onpress: isUnloacked
                  ? () {
                      setState(() => gsrLoading = true);
                      publishMy({
                        "id": "KC_EC94CB6F61DC",
                        "patientID": patientID,
                        "doctorID": doctorID,
                        "appointmentID": appointmentID,
                        "type": "Doctor",
                        "command": "device",
                        "number": 8,
                        "date": DateTime.now().millisecondsSinceEpoch
                      }, "KC_EC94CB6F61DC/device");
                    }
                  : () => Toast.showToast(
                      context: context, message: "Please Unlock"),
              gsr: temparature,
            ),
            PositionWidget(
              isReading: tReading,
              isLoading: postionLoading,
              onpress: isUnloacked
                  ? () {
                      setState(() => postionLoading = true);
                      publishMy({
                        "id": "KC_EC94CB6F61DC",
                        "patientID": patientID,
                        "doctorID": doctorID,
                        "appointmentID": appointmentID,
                        "type": "Doctor",
                        "command": "device",
                        "number": 4,
                        "date": DateTime.now().millisecondsSinceEpoch
                      }, "KC_EC94CB6F61DC/device");
                    }
                  : () => Toast.showToast(
                      context: context, message: "Please Unlock"),
              position: position,
            ),
            PauseAndSubmitWidget(
              stopAndShow: isUnloacked
                  ? () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) =>
                            BlocConsumer<CheckupBloc, CheckupState>(
                          listener: (context, state) {
                            if (state.error) {
                              setState(() {
                                isAnalysisended = false;
                              });
                            }
                            if (state.hasData) {
                              unSubscribe("KC_EC94CB6F61DC/app");
                              _client!.disconnect();
                              setState(() {
                                isAnalysisended = false;
                              });
                            }
                          },
                          builder: (context, state) {
                            return MyCustomAlertDialog(
                                isApponment: true,
                                questionMesage:
                                    "Are you wnat to submit the Appoinments ?",
                                isCompleted: state.hasData,
                                isLoading: state.isLoading || isAnalysisended,
                                okPressed: () {
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const AppoinmentsEndReportScrenn(),
                                      ),
                                      (route) => false);
                                },
                                successMessage:
                                    "Successfully completed your appointment.\nPlease add a prescription for the patient to take medication.",
                                onPress: () {
                                  publishMy({
                                    "id": "KC_EC94CB6F61DC",
                                    "patientID": patientID,
                                    "doctorID": doctorID,
                                    "appointmentID": appointmentID,
                                    "type": "Doctor",
                                    "command": "alert",
                                    "value": "analyse_end",
                                    "date":
                                        DateTime.now().millisecondsSinceEpoch
                                  }, "KC_EC94CB6F61DC/device");

                                  log(widget.checkupDetalis.toString());
                                });
                          },
                        ),
                      );
                    }
                  : null,
              pause: isUnloacked
                  ? () {
                      publishMy({
                        "id": "KC_EC94CB6F61DC",
                        "patientID": patientID,
                        "doctorID": doctorID,
                        "appointmentID": appointmentID,
                        "type": "Doctor",
                        "command": "device",
                        "number": 0,
                        "date": DateTime.now().millisecondsSinceEpoch
                      }, "KC_EC94CB6F61DC/device");
                    }
                  : () => Toast.showToast(
                      context: context, message: "Please Unlock"),
            ),
          ])
        ],
      ),
    );
  }
}
