import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math' as m;

import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/checkup/presentation/bmi_widget.dart';
import 'package:dr_kevell/features/checkup/presentation/end_appoinment_report_screen.dart';
import 'package:dr_kevell/features/checkup/presentation/ecg_widget.dart';


import 'package:flutter/material.dart';
import 'package:dr_kevell/features/checkup/presentation/temparature_widgtet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../features/checkup/presentation/glucose_widget.dart';
import '../../../../features/checkup/presentation/stethoscope_widget.dart';
import '../../../../features/home/data/models/waiting_patient_model.dart';

import '../../../../core/helper/alert.dart';
import '../../../../core/helper/toast.dart';
import '../../../../features/checkup/presentation/bloc/checkup_bloc.dart';
import '../../../../features/checkup/presentation/blood_pressure_widget.dart';
import '../../../../features/checkup/presentation/pause_and_submit_widget.dart';

import '../../../../features/checkup/presentation/spo_widget.dart';
import '../../../../features/checkup/presentation/unloack.dart';
import '../../../../features/checkup/presentation/widgets/ecg_graph.dart';

class PatientCheckupSBody extends StatefulWidget {
  static const routeName = '/patient-checup-screen';

  final WaitingPatient checkupDetalis;

  const PatientCheckupSBody({
    super.key,
    required this.checkupDetalis,
  });

  @override
  State<PatientCheckupSBody> createState() => _PatientCheckupSBodyState();
}

class _PatientCheckupSBodyState extends State<PatientCheckupSBody> {
  MqttServerClient? _client;

  bool isLoading = false;
  bool isConnected = false;
  bool isUnloacked = false;
  bool isUnloacking = false;

  bool isAnalysisended = false;

  String deviceId = "KC_EC94CB6F61DC";

  bool tReading = false;
  bool gReading = false;
  bool bmiReading = false;
  bool stethescopReading = false;
  bool sp02Reading = false;
  bool ecgReading = false;
  bool gsrReading = false;
  bool postionReading = false;
  bool bpReading = false;

  bool tLoading = false;
  bool gLoading = false;
  bool bmiLoading = false;
  bool sp02Loading = false;
  bool stethescopLoding = false;
  bool ecgLoading = false;
  bool gsrLoading = false;
  bool postionLoading = false;
  bool bpLoading = false;

  Map<String, dynamic> dataMap = {};

  String temparature = "0.00";
  String glucose = "0";
  String sop2 = "0.00";
  List<String> stethescopeAudio = [];
  String heartBeat = "0";
  String position = "";
  Map<String, String> bp = {"bpsys": "0", "bpdia": "0", "bpplus": "0"};
  // BmiResponse? bmiResponse;
  Map<String, dynamic> bmiResponse = {};

  int ecgIndex = 0;

  List<ECGData> ecgData = [];
  List<double> voltageValues = [];
  Map<String, String> ecgResults = {"Pulse": "", "R-R": "", "Result": ""};
  List<ECGData> gsrData = [];
  List<double> gsrVoltageValues = [];

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

  BuildContext? dialogContext;

  void onConnected() {
    _client!.updates!.listen((List<MqttReceivedMessage<MqttMessage>> c) {
      final MqttPublishMessage recMess = c[0].payload as MqttPublishMessage;
      setState(() {
        dataMap = json.decode(
            MqttPublishPayload.bytesToStringAsString(recMess.payload.message));
// ********************************** unloack **********************************//
// ********************************** unloack **********************************//

        // log("dataMap['number'] === ${dataMap['number']}");
        log("dataMap=== $dataMap");

        if (dataMap['state'].toString() == "error") {
          log("errrrrrrrrrrooooooooooorrrrrrr");
          // showDialog(
          //   context: context,
          //   barrierDismissible: false,
          //   builder: (BuildContext context) {
          //     dialogContext = context;
          //     return AlertDialog(
          //       content: Row(
          //         children: [
          //           CircularProgressIndicator(
          //             color: context.theme.primary,
          //           ),
          //           const Padding(
          //             padding: EdgeInsets.only(left: 20),
          //             child: Text("Syncing data..."),
          //           ),
          //         ],
          //       ),
          //     );
          //   },
          // );
        } else if (dataMap['state'] == "unlock") {
          isUnloacking = false;
          isUnloacked = true;
          deviceId = dataMap['id'];

// ********************************** Temprature **********************************//
// ********************************** Temprature **********************************//
        } else if (dataMap['number'] == "2" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"].toString() == "$appointmentID") {
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
            dataMap['state'] == "alert" &&
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
            dataMap["appointmentID"].toString() == "$appointmentID") {
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
        } 
        
        else if (dataMap['number'].toString() == "3" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"].toString() == "$appointmentID") {
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

// ********************************** stethescop **********************************//
// ********************************** stethescop **********************************//
//
        } else if (dataMap['number'].toString() == "11" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"].toString() == "$appointmentID") {
          isUnloacked = true;
          stethescopLoding = false;

          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "reading") {
            stethescopeAudio.add(dataMap['data']['content'].toString());
            log("Data Length ===================== ${stethescopeAudio.length}");
            stethescopReading = true;
          }
          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "result") {
            stethescopReading = false;
          }
        }

        // ********************************** glucose **********************************//
        // ********************************** glucose **********************************//

        else if (dataMap['number'].toString() == "10" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"].toString() == "$appointmentID") {
          isUnloacked = true;
          gLoading = false;

          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "reading") {
            glucose = dataMap['data']['content'].toString();
            gReading = true;
          }
          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "result") {
            gReading = false;
          }

          log(glucose);

// ********************************** BMI **********************************//
// ********************************** BMI **********************************//
        }
        
         else if (dataMap['number'].toString() == "9" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"].toString() == "$appointmentID") {
          isUnloacked = true;
          bmiLoading = false;

          if (dataMap['data']['type'] == "reading") {
            bmiResponse = dataMap['data'];
            // bmiResponse = BmiResponse.fromJson(dataMap['data']);

            bmiReading = true;
          }
          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "result") {
            bmiReading = false;
          }

          log(bmiResponse.toString());
// ********************************** bp **********************************//
// ********************************** bp **********************************//
        } 
        
        else if (dataMap['number'].toString() == "5" &&
            dataMap['state'] == "device" &&
            dataMap["appointmentID"].toString().toString() ==
                "$appointmentID") {
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
            dataMap["appointmentID"].toString() == "$appointmentID") {
          isUnloacked = true;
          ecgLoading = false;

          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "reading") {
            ecgResults = {
              'Pulse': dataMap['data']['pulse'].toString(),
              'R-R': dataMap['data']['rr'].toString(),
              'Result': dataMap['data']['status'].toString()
            };

            voltageValues.clear();
            ecgData.clear();

            voltageValues = dataMap['data']['content']
                .toString()
                .split(',')
                .where((element) => element.isNotEmpty)
                .map((e) => double.parse(e))
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
            dataMap["appointmentID"].toString() == "$appointmentID") {
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
                .map((e) => double.parse(e))
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

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiSliver(children: [
      UnloackWidget(
        id: deviceId,
        isConnected: isConnected,
        isUnloacking: isUnloacking,
        isLoading: isLoading,
        isUnloacked: isUnloacked,
        onpressed: () async {
          initializeMQTTClient();
          await connect().then((value) => subScribeTo("KC_EC94CB6F61DC/app"));
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
            : () => Toast.showToast(context: context, message: "Please Unlock"),
        temparature: temparature,
      ),
      StethoscopeWidget(
        isReading: stethescopReading,
        isLoading: stethescopLoding,
        onpress: isUnloacked
            ? () {
                setState(() => stethescopLoding = true);
                publishMy({
                  "id": "KC_EC94CB6F61DC",
                  "patientID": patientID,
                  "doctorID": doctorID,
                  "appointmentID": appointmentID,
                  "type": "Doctor",
                  "command": "device",
                  "number": 11,
                  "date": DateTime.now().millisecondsSinceEpoch
                }, "KC_EC94CB6F61DC/device");
              }
            : () => Toast.showToast(context: context, message: "Please Unlock"),
        audio: stethescopeAudio,
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
            : () => Toast.showToast(context: context, message: "Please Unlock"),
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
              : () =>
                  Toast.showToast(context: context, message: "Please Unlock"),
          bp: bp["bpsys"]!,
          isReading: bpReading,
          bpdia: bp["bpdia"]!,
          bpplus: bp["bpplus"]!),
      EcgWidget(
        ecgResults: ecgResults,
        data: ecgData,
        isReading: ecgReading,
        isLoading: false,
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
            : () => Toast.showToast(context: context, message: "Please Unlock"),
      ),
      GlucoseWidget(
        isReading: gReading,
        isLoading: gLoading,
        onpress: isUnloacked
            ? () {
                setState(() => gLoading = true);
                publishMy({
                  "id": "KC_EC94CB6F61DC",
                  "patientID": patientID,
                  "doctorID": doctorID,
                  "appointmentID": appointmentID,
                  "type": "Doctor",
                  "command": "device",
                  "number": 10,
                  "date": DateTime.now().millisecondsSinceEpoch
                }, "KC_EC94CB6F61DC/device");
              }
            : () => Toast.showToast(context: context, message: "Please Unlock"),
        glucose: glucose,
      ),

      // GSRgWidget(
      //   isReading: gsrReading,
      //   data: gsrData,
      //   isLoading: gsrLoading,
      //   onpress: isUnloacked
      //       ? () {
      //           setState(() => gsrLoading = true);
      //           publishMy({
      //             "id": "KC_EC94CB6F61DC",
      //             "patientID": patientID,
      //             "doctorID": doctorID,
      //             "appointmentID": appointmentID,
      //             "type": "Doctor",
      //             "command": "device",
      //             "number": 8,
      //             "date": DateTime.now().millisecondsSinceEpoch
      //           }, "KC_EC94CB6F61DC/device");
      //         }
      //       : () => Toast.showToast(context: context, message: "Please Unlock"),
      //   gsr: temparature,
      // ),
      // PositionWidget(
      //   isReading: tReading,
      //   isLoading: postionLoading,
      //   onpress: isUnloacked
      //       ? () {
      //           setState(() => postionLoading = true);
      //           publishMy({
      //             "id": "KC_EC94CB6F61DC",
      //             "patientID": patientID,
      //             "doctorID": doctorID,
      //             "appointmentID": appointmentID,
      //             "type": "Doctor",
      //             "command": "device",
      //             "number": 4,
      //             "date": DateTime.now().millisecondsSinceEpoch
      //           }, "KC_EC94CB6F61DC/device");
      //         }
      //       : () => Toast.showToast(context: context, message: "Please Unlock"),
      //   position: position,
      // ),
      BMIWidget(
        isReading: bmiReading,
        isLoading: bmiLoading,
        onpress: isUnloacked
            ? () {
                showCustomDialog(context, (String g, String h) {
                  log("$g :: $h");
                  setState(() => bmiLoading = true);
                  publishMy({
                    "id": "KC_EC94CB6F61DC",
                    "patientID": patientID,
                    "doctorID": doctorID,
                    "appointmentID": appointmentID,
                    "type": "Doctor",
                    "command": "device",
                    "number": 9,
                    "gender": g,
                    "height": h,
                    "date": DateTime.now().millisecondsSinceEpoch
                  }, "KC_EC94CB6F61DC/device");

                  Navigator.pop(context);
                });
              }
            : () => Toast.showToast(context: context, message: "Please Unlock"),
        bmiResponse: bmiResponse,
      ),

      PauseAndSubmitWidget(
        stopAndShow: isUnloacked
            ? () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => BlocConsumer<CheckupBloc, CheckupState>(
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
                      log(state.hasData.toString());
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
                              "date": DateTime.now().millisecondsSinceEpoch
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
            : () => Toast.showToast(context: context, message: "Please Unlock"),
      ),
    ]);
  }
}

void showCustomDialog(
    BuildContext context, Function(String sex, String hegiht) onpress) {
  final formKey = GlobalKey<FormState>();
  String gender = 'Male';
  String height = '';

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        title: Text(
          'Enter Details',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: context.theme.primary, fontSize: 18),
        ),
        content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              DropdownButtonFormField<String>(
                value: gender,
                items: ['Male', 'Female'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  gender = newValue!;
                },
                decoration: const InputDecoration(labelText: "Gender"),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  height = value;
                },
                decoration: const InputDecoration(labelText: "Height in cm"),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
            child: const Text('Submit'),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                onpress(gender, height);
              }
            },
          ),
        ],
      );
    },
  );
}
