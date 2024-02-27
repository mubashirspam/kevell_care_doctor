import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math' as m;

import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import 'package:dr_kevell/features/checkup/presentation/end_appoinment_report_screen.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../features/checkup/presentation/bmi_widget.dart';
import '../../../../features/checkup/presentation/ecg_widget.dart';
import '../../../../features/checkup/presentation/widgets/checkup_card.dart';
import '../../../../features/home/data/models/waiting_patient_model.dart';

import '../../../../core/helper/alert.dart';
import '../../../../core/helper/toast.dart';
import '../../../../features/checkup/presentation/bloc/checkup_bloc.dart';

import '../../../../features/checkup/presentation/pause_and_submit_widget.dart';

import '../../../../features/checkup/presentation/unloack.dart';
import '../../../../features/checkup/presentation/widgets/ecg_graph.dart';
import '../../../../settings/color/main_color.dart';

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
        // dataMap = jsonData;
        log("dataMap['number'] === ${dataMap['number']}");
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
            dataMap["appointment_id"].toString() == "$appointmentID") {
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
            dataMap['data'] == "end_ok") {
          log("Analysis Ended");

          isAnalysisended = true;

          context.read<CheckupBloc>().add(
                CheckupEvent.endAppoinment(
                  appoinmentId: widget.checkupDetalis.id.toString(),
                  patientId: widget.checkupDetalis.patientId.toString(),
                ),
              );

// ********************************** position **********************************//
// ********************************** position **********************************//
        } else if (dataMap['number'] == "4" &&
            dataMap['state'] == "device" &&
            dataMap["appointment_id"].toString() == "$appointmentID") {
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
        } else if (dataMap['number'].toString() == "3" &&
            dataMap['state'] == "device" &&
            dataMap["appointment_id"].toString() == "$appointmentID") {
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
            dataMap["appointment_id"].toString() == "$appointmentID") {
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
            dataMap["appointment_id"].toString() == "$appointmentID") {
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
        } else if (dataMap['number'].toString() == "9" &&
            dataMap['state'] == "device" &&
            dataMap["appointment_id"].toString() == "$appointmentID") {
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
        } else if (dataMap['number'].toString() == "5" &&
            dataMap['state'] == "device" &&
            dataMap["appointment_id"].toString().toString() ==
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
            dataMap["appointment_id"].toString() == "$appointmentID") {
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
            dataMap["appointment_id"].toString() == "$appointmentID") {
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
    // doctorID = widget.checkupDetalis.doctorId!;
    doctorID = 1001;
    appointmentID = widget.checkupDetalis.id!;

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
                  "patient_id": patientID,
                  "doctor_id": doctorID,
                  "appointment_id": appointmentID,
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

/////  ///// ///// ///// /////  temparture /////////////////////
////////  ///// ///// ///// /////  temparture /////////////////////
////////  ///// ///// ///// /////  temparture /////////////////////

      SizedBox(
        child: Row(
          children: [
            const SizedBox(width: 20),
            Expanded(
                child: HelathCardWidget(
              onPress: isUnloacked
                  ? () {
                      setState(() => tLoading = true);
                      publishMy({
                        "id": "KC_EC94CB6F61DC",
                        "patient_id": patientID,
                        "doctor_id": doctorID,
                        "appointment_id": appointmentID,
                        "type": "Doctor",
                        "command": "device",
                        "number": 2,
                        "date": DateTime.now().millisecondsSinceEpoch
                      }, "KC_EC94CB6F61DC/device");
                    }
                  : () => Toast.showToast(
                      context: context, message: "Please Unlock"),
              isReading: tReading,
              isLoading: tLoading,
              data: HelathCard(
                color: CardColor.color4,
                data: temparature,
                name: "Temperature",
                refe: "98.6°F",
                unit: "°F",
                iconData: Icons.thermostat,
              ),
            )),
            const SizedBox(width: 20),
          ],
        ),
      ),
      const SizedBox(height: 20),

      /////  ///// ///// ///// /////  glucose /////////////////////
////////  ///// ///// ///// /////  glucose /////////////////////
////////  ///// ///// ///// /////  glucose /////////////////////

      SizedBox(
        child: Row(
          children: [
            const SizedBox(width: 20),
            Expanded(
                child: HelathCardWidget(
              onPress: isUnloacked
                  ? () {
                      setState(() => gLoading = true);
                      publishMy({
                        "id": "KC_EC94CB6F61DC",
                        "patient_id": patientID,
                        "doctor_id": doctorID,
                        "appointment_id": appointmentID,
                        "type": "Doctor",
                        "command": "device",
                        "number": 10,
                        "date": DateTime.now().millisecondsSinceEpoch
                      }, "KC_EC94CB6F61DC/device");
                    }
                  : () => Toast.showToast(
                      context: context, message: "Please Unlock"),
              isReading: gReading,
              isLoading: gLoading,
              data: HelathCard(
                color: CardColor.color3,
                data: glucose,
                name: "Glucometer",
                refe: "Status: ${"OK"}",
                unit: "",
                iconData: Icons.favorite,
              ),
            )),
            const SizedBox(width: 20),
          ],
        ),
      ),
      const SizedBox(height: 20),

      /////  ///// ///// ///// /////  SpO2 /////////////////////
////////  ///// ///// ///// /////  SpO2 /////////////////////
////////  ///// ///// ///// /////  SpO2 /////////////////////

      SizedBox(
        child: Row(
          children: [
            const SizedBox(width: 20),
            Expanded(
                child: HelathCardWidget(
              onPress: isUnloacked
                  ? () {
                      setState(() => sp02Loading = true);
                      publishMy({
                        "id": "KC_EC94CB6F61DC",
                        "patient_id": patientID,
                        "doctor_id": doctorID,
                        "appointment_id": appointmentID,
                        "type": "Doctor",
                        "command": "device",
                        "number": 3,
                        "date": DateTime.now().millisecondsSinceEpoch
                      }, "KC_EC94CB6F61DC/device");
                    }
                  : () => Toast.showToast(
                      context: context, message: "Please Unlock"),
              isReading: false,
              isLoading: sp02Loading,
              isData: false,
              data: const HelathCard(
                color: CardColor.color10,
                data: "",
                name: "SpO2",
                refe: "",
                unit: "",
                iconData: Icons.favorite,
              ),
            )),
            const SizedBox(width: 20),
          ],
        ),
      ),
      const SizedBox(height: 5),
      SizedBox(
        child: Row(
          children: [
            const SizedBox(width: 20),
            Expanded(
                child: HelathCardWidget(
              onPress: null,
              isReading: sp02Reading,
              isLoading: false,
              isData: true,
              data: HelathCard(
                color: CardColor.color10,
                data: sop2,
                name: "SpO2",
                refe: "96% to 99%",
                unit: "%",
                iconData: Icons.favorite,
              ),
            )),
            const SizedBox(width: 5),
            Expanded(
                child: HelathCardWidget(
              onPress: null,
              isReading: sp02Reading,
              isLoading: false,
              isData: true,
              data: HelathCard(
                color: CardColor.color10,
                data: heartBeat,
                name: "Heart Rate",
                refe: "60 to 100bpm",
                unit: "bpm",
                iconData: Icons.favorite,
              ),
            )),
            const SizedBox(width: 20),
          ],
        ),
      ),

      const SizedBox(height: 20),

      /////  ///// ///// ///// /////  pb /////////////////////
////////  ///// ///// ///// /////  pb /////////////////////
////////  ///// ///// ///// /////  pb /////////////////////

      SizedBox(
        child: Row(
          children: [
            const SizedBox(width: 20),
            Expanded(
                child: HelathCardWidget(
              onPress: isUnloacked
                  ? () {
                      setState(() => bpLoading = true);
                      publishMy({
                        "id": "KC_EC94CB6F61DC",
                        "patient_id": patientID,
                        "doctor_id": doctorID,
                        "appointment_id": appointmentID,
                        "type": "Doctor",
                        "command": "device",
                        "number": 5,
                        "date": DateTime.now().millisecondsSinceEpoch
                      }, "KC_EC94CB6F61DC/device");
                    }
                  : () => Toast.showToast(
                      context: context, message: "Please Unlock"),
              isReading: bpReading,
              isLoading: bpLoading,
              data: HelathCard(
                color: CardColor.color3,
                data: bp["bpsys"]!,
                name: "BP Systolic",
                refe: "<12 0mmHg",
                unit: "mmHg",
                iconData: Icons.favorite,
              ),
            )),
            const SizedBox(width: 20),
          ],
        ),
      ),
      const SizedBox(height: 5),
      SizedBox(
        child: Row(
          children: [
            const SizedBox(width: 20),
            Expanded(
                child: HelathCardWidget(
              onPress: null,
              isReading: false,
              isLoading: false,
              isData: true,
              data: HelathCard(
                color: CardColor.color3,
                data: bp["bpdia"]!,
                name: "BP Diastolic",
                refe: "<80 mmHg",
                unit: "mmHg",
                iconData: Icons.favorite,
              ),
            )),
            const SizedBox(width: 5),
            Expanded(
                child: HelathCardWidget(
              onPress: null,
              isReading: false,
              isLoading: false,
              isData: true,
              data: HelathCard(
                color: CardColor.color3,
                data: bp["bpplus"]!,
                name: "BP Pulse",
                refe: "60 ~ 100",
                unit: "mmHg",
                iconData: Icons.favorite,
              ),
            )),
            const SizedBox(width: 20),
          ],
        ),
      ),

      const SizedBox(height: 20),
      // TepamratureWidget(
      //   isReading: tReading,
      //   isLoading: tLoading,
      //   onpress: isUnloacked
      //       ? () {
      //           setState(() => tLoading = true);
      //           publishMy({
      //             "id": "KC_EC94CB6F61DC",
      //             "patient_id": patientID,
      //             "doctor_id": doctorID,
      //             "appointment_id": appointmentID,
      //             "type": "Doctor",
      //             "command": "device",
      //             "number": 2,
      //             "date": DateTime.now().millisecondsSinceEpoch
      //           }, "KC_EC94CB6F61DC/device");
      //         }
      //       : () => Toast.showToast(context: context, message: "Please Unlock"),
      //   temparature: temparature,
      // ),
      // GlucoseWidget(
      //   isReading: gReading,
      //   isLoading: gLoading,
      //   onpress: isUnloacked
      //       ? () {
      //           setState(() => gLoading = true);
      //           publishMy({
      //             "id": "KC_EC94CB6F61DC",
      //             "patient_id": patientID,
      //             "doctor_id": doctorID,
      //             "appointment_id": appointmentID,
      //             "type": "Doctor",
      //             "command": "device",
      //             "number": 10,
      //             "date": DateTime.now().millisecondsSinceEpoch
      //           }, "KC_EC94CB6F61DC/device");
      //         }
      //       : () => Toast.showToast(context: context, message: "Please Unlock"),
      //   glucose: glucose,
      // ),
      // StethoscopeWidget(
      //   isReading: stethescopReading,
      //   isLoading: stethescopLoding,
      //   onpress: isUnloacked
      //       ? () {
      //           setState(() => stethescopLoding = true);
      //           publishMy({
      //             "id": "KC_EC94CB6F61DC",
      //             "patient_id": patientID,
      //             "doctor_id": doctorID,
      //             "appointment_id": appointmentID,
      //             "type": "Doctor",
      //             "command": "device",
      //             "number": 11,
      //             "date": DateTime.now().millisecondsSinceEpoch
      //           }, "KC_EC94CB6F61DC/device");
      //         }
      //       : () => Toast.showToast(context: context, message: "Please Unlock"),
      //   audio: stethescopeAudio,
      // ),
      // Spo2Widget(
      //   isReading: sp02Reading,
      //   heartBeat: heartBeat,
      //   isLoading: sp02Loading,
      //   spo2: sop2,
      //   onpress: isUnloacked
      // ? () {
      //     setState(() => sp02Loading = true);
      //     publishMy({
      //       "id": "KC_EC94CB6F61DC",
      //       "patient_id": patientID,
      //       "doctor_id": doctorID,
      //       "appointment_id": appointmentID,
      //       "type": "Doctor",
      //       "command": "device",
      //       "number": 3,
      //       "date": DateTime.now().millisecondsSinceEpoch
      //     }, "KC_EC94CB6F61DC/device");
      //   }
      //       : () => Toast.showToast(context: context, message: "Please Unlock"),
      // ),
      // BloodPressureWidget(
      //     isLoading: bpLoading,
      //     onpress: isUnloacked
      // ? () {
      //     setState(() => bpLoading = true);
      //     publishMy({
      //       "id": "KC_EC94CB6F61DC",
      //       "patient_id": patientID,
      //       "doctor_id": doctorID,
      //       "appointment_id": appointmentID,
      //       "type": "Doctor",
      //       "command": "device",
      //       "number": 5,
      //       "date": DateTime.now().millisecondsSinceEpoch
      //     }, "KC_EC94CB6F61DC/device");
      //   }
      //         : () =>
      //             Toast.showToast(context: context, message: "Please Unlock"),
      // bp: bp["bpsys"]!,
      // isReading: bpReading,
      // bpdia: bp["bpdia"]!,
      // bpplus: bp["bpplus"]!),
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
                  "patient_id": patientID,
                  "doctor_id": doctorID,
                  "appointment_id": appointmentID,
                  "type": "Doctor",
                  "command": "device",
                  "number": 6,
                  "date": DateTime.now().millisecondsSinceEpoch
                }, "KC_EC94CB6F61DC/device");
              }
            : () => Toast.showToast(context: context, message: "Please Unlock"),
      ),
      // GlucoseWidget(
      //   isReading: gReading,
      //   isLoading: gLoading,
      //   onpress: isUnloacked
      //       ? () {
      //           setState(() => gLoading = true);
      //           publishMy({
      //             "id": "KC_EC94CB6F61DC",
      //             "patient_id": patientID,
      //             "doctor_id": doctorID,
      //             "appointment_id": appointmentID,
      //             "type": "Doctor",
      //             "command": "device",
      //             "number": 10,
      //             "date": DateTime.now().millisecondsSinceEpoch
      //           }, "KC_EC94CB6F61DC/device");
      //         }
      //       : () => Toast.showToast(context: context, message: "Please Unlock"),
      //   glucose: glucose,
      // ),

      // GSRgWidget(
      //   isReading: gsrReading,
      //   data: gsrData,
      //   isLoading: gsrLoading,
      //   onpress: isUnloacked
      //       ? () {
      //           setState(() => gsrLoading = true);
      //           publishMy({
      //             "id": "KC_EC94CB6F61DC",
      //             "patient_id": patientID,
      //             "doctor_id": doctorID,
      //             "appointment_id": appointmentID,
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
      //             "patient_id": patientID,
      //             "doctor_id": doctorID,
      //             "appointment_id": appointmentID,
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
                    "patient_id": patientID,
                    "doctor_id": doctorID,
                    "appointment_id": appointmentID,
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
                              "patient_id": patientID,
                              "doctor_id": doctorID,
                              "appointment_id": appointmentID,
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
                  "patient_id": patientID,
                  "doctor_id": doctorID,
                  "appointment_id": appointmentID,
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

Map<String, dynamic> jsonData = {
  "id": "KC_EC94CB6F61DC",
  "patient_id": "1002",
  "appointment_id": "1105",
  "doctor_id": "1001",
  "type": "patient",
  "state": "device",
  "date": "2024-02-09T12:14:30.000Z",
  "number": "6",
  "data":
      "0.037302657972894844, 0.05376967530411224, 0.1983820556887629, 0.16832701630972255, -0.12884783377313097, -0.32630494373450375, -0.2746546505967287, 0.02043650263892519, 0.15540570803376627, 0.07929629613238182, 0.05278944775307226, 0.17567218754724004, 0.3621036451436511, 0.3214177739780091, 0.14017454334841142, 0.128045449606816, 0.27651587495295676, 0.35184655706497986, 0.23054656898549467, 0.12797949761989333, 0.22003021973875161, 0.34625009987762445, 0.387461495037564, 0.30496147320198547, 0.11771613841463985, 0.08374214932526144, 0.18845681013709145, 0.3296100676691453, 0.29994465372956697, 0.2478410367774898, 0.4040144495725678, 0.5328236617533251, 0.4315045543319483, 0.2435387386446108, 0.262022439138831, 0.5421600049792441, 0.6793423498085234, 0.634387159744563, 0.656768917580821, 0.6324613620556405, 0.4821922356543688, 0.23774074420648617, 0.2448776897618376, 0.3919896106986665, 0.2730742710424409, -0.061230160953971983, -0.26220914605541223, -0.1359968150441589, 0.019494272169696694, -0.06617460704864714, -0.10217447539715532, -0.024530267861333433, -0.19217766495780889, -0.5074950607135095, -0.005201038760589393, 1.5329184380079088, 2.5728502795768047, 1.8411180968532765, 0.2586798560213017, -0.4366408540179832, -0.006759156082255388, 0.21928356031408594, -0.04731334486221653, -0.0993382168967425, 0.07767521400714227, 0.12546090020014553, -0.10893299406551868, -0.20473466701242096, 0.006120422123415147, 0.22817845974282902, 0.26614372642740636, 0.1314761888977175, 0.09632451169354143, 0.11933059031616354, 0.17380645778476742, 0.17478879009824486, 0.1894409736078139, 0.24132857167593902, 0.31932946286293523, 0.28867204633745436, 0.3416766079546091, 0.43104763927529965, 0.48099174215055157, 0.4303449612708976, 0.39786201267201127, 0.491460781107486, 0.5206792705904781, 0.49094285631433965, 0.4837726768314835, 0.3579104650956978, 0.15674320336026515, -0.07688448626640788, -0.17379158771258593, -0.2222045324546091, -0.36324834072909357, -0.3390104685300083, -0.31055834347546385, -0.322820422145714, -0.39084836633507936, -0.3273469330095485, -0.1954717340692633, -0.20967282802896436, -0.3449307226868702, -0.430387880570318, -0.40494992135096974, -0.3303576913152102, -0.3494546737971128, -0.30162904770613236, -0.20208960859991063, -0.17255252061773121, -0.24453708466801896, -0.3628053378021211, -0.313128710676217, -0.15812486914984883, -0.25102283150693816, -0.3757494769976726, -0.315658827646583, -0.13361799852033077, -0.14349352162228177, -0.24042096195800192, -0.1235959272512811, 0.05462713131712413, 0.08336827930504986, -0.07450626997611447, -0.02101168402901541, 0.3516961033003077, 0.5011758865571144, 0.3033667355926473, 0.1164391181540769, 0.1127446714767129, 0.17530241507982602, 0.03081286895646079, -0.20570164464477333, -0.21676847738810168, -0.14314542101527614, -0.18024077277214084, -0.3118591346986759, -0.2850114304963031, -0.1569548135106754, -0.058404095297099744, -0.081129003796135, -0.19695450929492486, -0.5771298117102097, -0.7910421989971487, -0.11253852609065781, 1.4885728546972332, 2.3425870173562826, 1.5701993208343958, 0.14490158931094801, -0.5665355920604802, -0.40088156829823945, -0.23996759315885138, -0.30303135320986496, -0.29988013683682707, -0.35317514133154415, -0.3835823705927851, -0.5141429348574963, -0.5143535345636253, -0.39928027948205586, -0.26910342369189816, -0.24834175671554135, -0.4335313311361013, -0.5080168269962484, -0.3651503459172239, -0.2970541455356577, -0.3484658851459845, -0.3292983651820725, 0.0008996329418165126, 0.23300855157705508, 0.07257902183687537, -0.0163759756559987, 0.3459299079115513, 0.7955253806142594, 0.7623576432811137, 0.5206634981475027, 0.6380733652562721, 0.9824226101896176, 1.0649483670215463, 0.7630038597846724, 0.4559453211867741, 0.4561751353959049, 0.4608929909915355, 0.34478207983696146, 0.18631440458212126, 0.06947037332390277, 0.13867334747059337, 0.23779508994695106, 0.25821525906700005, 0.21653549350928167, 0.08428995146421665, 0.0663187979420996, 0.17512255923760367, 0.3247354616553086, 0.3562889450628143, 0.20700361420114466, 0.24262702364730585, 0.40157350888219034, 0.41337343660250786, 0.19296398312009286, 0.05352977181380435, 0.15679304055808913, 0.28164179435027475, 0.2566115208757215, 0.1943904832244181, 0.02807631392425224, -0.1530269167978896, -0.19491947940896162, 0.11641631566751418, 0.37237694092874535, 0.23389071132066067, 0.009785865564745918, -0.07781807058556958, 0.01544777919132557, 0.13318561752022062, 0.04870678989474816, -0.05989166172201887, -0.09836713796148902, 0.08530587684744799, 0.3405183093493023, 0.4068483506425776, 0.33071498671113386, 0.2917094638090858, 0.2822891867647274, 0.10700073305308545, -0.15235057615144965, -0.23325777278025822, -0.27885218469774625, -0.20104661255133813, -0.19136059796508953, -0.4378636741835539, -0.5973049933136486, -0.5479184245651714, -0.36682732608958507, -0.21225563807317904, -0.4311013537325512, -0.9578793696612953, -1.1869790244760297, -0.3385609758098784, 1.2502827216408643, 2.114890471655305, 1.3183538428467951, -0.2308083461402913, -1.017235436636448, -0.8990025177540975, -0.6661551431191101, -0.5321449228664197, -0.5127251883929064, -0.6329582993138302, -0.7261287131319163, -0.7295935097923805, -0.6579368239580332, -0.7254216334269822, -0.902657135283986, -0.8922177968545824, -0.7413722238513331, -0.4870799273235092, -0.4692781454656134, -0.5739576147146416, -0.6136604138460248, -0.6044246860891647, -0.43237995868005136, -0.34469645551575195, -0.24795814006659786, -0.10757223352024396, -0.03228064769307647, 0.005321662451100706, -0.09944216342829709, -0.20056913113816016, -0.029914377126679836, 0.22585736072990503, 0.3046260087462578, 0.11399289548942355, -0.05159326832608662, -0.07519274542674004, -0.12978897458934557, -0.24538224537243336, -0.341146117446844, -0.3109722168744483, -0.23707364358576732, -0.206464802875452, -0.11095623790275388, -0.025379517923984178, 0.05028619243092854, 0.030487557423893565, -0.106861622728657, -0.10751413397850587, 0.04510238922980179, 0.16984755218810985, 0.15414273523696215, 0.16220400640080224, 0.25852505554818656, 0.14187717931073526, -0.019126722658318978, 0.030020038925411368, 0.222435351936612, 0.37606023124784377, 0.1765085790547739, -0.02933020936178563, 0.021269512301135, 0.21836231889354418, 0.3374521544584722, 0.2327145332979219, 0.1036823380953443, 0.14328102750894145, 0.2767991455569747, 0.38370415015764986, 0.30760011634965695, 0.20805256656922413, 0.22756329182185384, 0.19819524825995666, 0.17714579917439677, 0.24305654000218443, 0.405370731852568, 0.5410895696452025, 0.5701622702603237, 0.5545991801152502, 0.49705791691295687, 0.4792690344063502, 0.5817116041325647, 0.7785403879427841, 0.8032311109643825, 0.4395524925265573, 0.11283039565471553, 0.16606368673148889, 0.3479300596072962, 0.2910720624598231, -0.009516474343633022, -0.26702919394263797, -0.2261776057338075, -0.13851611461978316, -0.020939138136070637, 0.05554641467811759, -0.17870970839730588, -0.5254792092034262, -0.13971926080133615, 1.2828400447026262, 2.379774814438472, 1.8741723321182346, 0.3047475298626183, -0.7380970832913378, -0.5345112043741614, -0.014858897022192074, -0.03646906474672805, -0.34341482068566215, -0.5269071645598158, -0.3768047735822956, -0.204568601891909, -0.18159286261238292, -0.3615104340650107, -0.5350025254720256, -0.4785056880260904, -0.3131499233349776, -0.3197395630794315, -0.4453405246133901, -0.5383055292150051, -0.33060769524164807, -0.25427978836164333, -0.46881395137730314, -0.5370018535369473, -0.32091975764487607, -0.004629069840604199, 0.04136347974517304, -0.0691350730468813, 0.033112689493537774, 0.16416774417860483, 0.12159390275459388, -0.0463537496389678, 0.00665436379739859, 0.16692779700640725, 0.12752298350977265, -0.11692922325376337, -0.1852567458062502, -0.04581898546190781, -0.0746575435942946, -0.3957866166662251, -0.5560185211982311, -0.42524478275755606, -0.2430834698652717, -0.17434603116907293, -0.2088880589794735, -0.13161956093904809, -0.06814481870283004, -0.15043571014705656, -0.2718745505752219, -0.32642021285416734, -0.11845407507170284, 0.014870393092394423, -0.1613622977695478, -0.3235374081312902, -0.19907723242015157, -0.010254382508137707, -0.062282835904025516, -0.18739146125776324, -0.04488049428962402, 0.023579180768769466, -0.10174089754647703, -0.23157178408776233, -0.17334648418420076, -0.021212588679411937, 0.016413085137848612, -0.005729653513684998, -0.058242019322362684, -0.16727925679885616, -0.22097149076911138, -0.2514308286132577, -0.19162938160789544, -0.1283203071041812, -0.011447072134490846, 0.09861989810313097, 0.09543796791228545, 0.012527068483440859, -0.05435337591022572, 0.024981392463243192, 0.23763717459855513, 0.29110200126613367, 0.20835613764180366, 0.06276213258127851, 0.09495892883549299, 0.12479112551543152, -0.06504632792496377, -0.2330809366075534, -0.15986554163579864, 0.00010777815483488975, -0.13308116900910572, -0.4805788702239539, -0.5293689587224285, -0.21649313635033737, 0.043544818165422244, -0.22656490115674008, -0.6023867162872057, -0.040932261332638574, 1.4219724220252488, 2.2500918433539776, 1.349256908167473, -0.3636169262018294, -1.0464255459586504, -0.4930366991710579, -0.008553984701987986, -0.11964289615432161, -0.4550421520284806, -0.4493328892158419, -0.3421200898977448, -0.4047449980225263, -0.37744616952503807, -0.25726049932022726, -0.2544219190606312, -0.3500913048427479, -0.282150509787696, -0.07194143105773813, -0.05310878758470518, -0.21370463555511396, -0.3094445255769378, -0.2025318112819503, 0.021746265728804285, 0.11285594242520307, 0.11520924646917784, 0.10388994762159376, 0.09234457903144337, 0.150912007482808, 0.18546775699777687, 0.3361789986446539, 0.5227650464801623, 0.5743460287969854, 0.4435984365712336, 0.24236669953849876, 0.21194678589457827, 0.09646886810075803, -0.1852799236085386, -0.3751823927350298, -0.3181842223713615, -0.06314509148801668, -0.01825439173174509, -0.15288351606308376, -0.18995566269376363, -0.16517704751462148, -0.10878657299607962, -0.11797522013598936, -0.07006059142247689, -0.00934175038683045, -0.1138233838487781, -0.28375907166885983, -0.19414863063217425, 0.06882531459863922, 0.24586771110819233, 0.2305618150705918, 0.09866595813159432, -0.020783175698027588, 0.006639839000912352, -0.024717526918909195, -0.19132644692351644, -0.25267377830267485, -0.10016959535248636, 0.08513908226021816, 0.17037814016926686, 0.07928009976461449, 0.09154114083618732, 0.15636127786893392, 0.09255059510306651, -0.013061579401053052, -0.05373513949528612, 0.03822640464803495, 0.1648951327642201, 0.1392466549851339, 0.12626418382585528, 0.12529979528567634, 0.2198607565602874, 0.30330893965710204, 0.2998710684241391, 0.3029417444054884, 0.25911488748499506, 0.28042304437547094, 0.385507254360322, 0.46844436542331963, 0.442249262712913, 0.2907978098343692, 0.17117293881602508, 0.013072022512639671, -0.2259992922468003, -0.31589608307146066, -0.28132019733689273, -0.23561225506111252, -0.360867626494846, -0.491314608152957, -0.29853804829971836, -0.0581015528661719, -0.3213870933227234, -0.8527683113684967, -0.57543811679132, 0.8769765074140676, 2.0422482041834304, 1.6135587784955856, 0.11749831464397818, -0.7840252508709592, -0.5079727311289445, -0.19046665889714912, -0.3105182696396729, -0.45960721687183376, -0.39169613415941196, -0.2603866271467193, -0.3927627259786345, -0.5396161109505171, -0.4735962277161459, -0.31394057373404427, -0.29554749803951974, -0.3485661136115834, -0.28544880066907624, -0.2638806840279298, -0.25441165296866675, -0.22982879072305587, -0.28036828926832996, -0.30104993667146945, -0.18399583898816788, -0.09336841329274823, -0.04736352921918681, -0.07750840549342056, 0.019943206566111264, 0.27623536145973626, 0.43022944192049456, 0.3597741856937045, 0.15523428954724214, 0.17199387573587535, 0.3335035835870936, 0.416614104675946, 0.27581402406739036, -0.12508065464231957, -0.22759091780671564, -0.06805070762343032, 0.033398329953456596, -0.023697461707720652, -0.10768692152531213, -0.04410174832694931, -0.044128913679400375, -0.14317716891134655, -0.167133448917421, -0.12168012954607235, -0.12485718618396151, -0.148413996359356, -0.08766620015926158, -0.00045679198243525566, 0.0025081418332182186, -0.06388281604327382, -0.08919800069926191, -0.12996440588813876, -0.19427769945382894, -0.20691689705936392, -0.03969052948596944, 0.05051134009988203, -0.009631614995144474, -0.02769826764721363, 0.010672530171808468, 0.03865517692005183, -0.046953681603766395, -0.17629405891646555, -0.05140181863204898, 0.05114393598650504, 0.040315500328820066, -0.09804292373559545, -0.1773174378866414, -0.11941039895599552, -0.07363642650222822, -0.16310343160838683, -0.2869718041378301, -0.31255828783269973, -0.09941623476216853, 0.006624044425731989, -0.05598084575574732, -0.2374433606704269, -0.3019908635431362, -0.1757842209933161, -0.05925263332656302, 0.021176450882241273, 0.04442847617666675, 0.0814948411766898, 0.23909244176798836, 0.29001757607966944, 0.26191237884939156, 0.2248756632386805, 0.13132666754603203, 0.007852521215750839, -0.14149428332365213, -0.2628320489374863, -0.30319699943500716, -0.2777408610302984, -0.23198115280240064, -0.31848041475066574"
};
