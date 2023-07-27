import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/checkup/presentation/temparature_widgtet.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import '../../../core/helper/toast.dart';
import '../../../features/checkup/presentation/spo_widget.dart';
import '../../../features/checkup/presentation/unloack.dart';
import '../../../features/checkup/presentation/checkup_header.dart';

import 'dart:math' as m;

class PatientCheckupScreen extends StatefulWidget {
  static const routeName = '/patient-checup-screen';
  const PatientCheckupScreen({super.key});

  @override
  State<PatientCheckupScreen> createState() => _PatientCheckupScreenState();
}

class _PatientCheckupScreenState extends State<PatientCheckupScreen> {
  MqttServerClient? _client;

  bool isLoading = false;
  bool isConnected = false;
  bool isUnloacked = false;
  bool isUnloacking = false;

  bool tReading = false;
  bool sp02Reading = false;

  Map<String, dynamic> dataMap = {};

  String temparature = "0.00";
  String sop2 = "0.00";
  

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
    log('EXAMPLE::Mosquitto client connected....');
    _client!.updates!.listen((List<MqttReceivedMessage<MqttMessage>> c) {
      final MqttPublishMessage recMess = c[0].payload as MqttPublishMessage;
      setState(() {
        dataMap = json.decode(
            MqttPublishPayload.bytesToStringAsString(recMess.payload.message));

        if (dataMap['state'] == "unlock") {
          isUnloacking = false;
          isUnloacked = true;
        } else if (dataMap['number'] == "2" && dataMap['state'] == "device") {
          isUnloacked = true;

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
        } else if (dataMap['number'] == "3" && dataMap['state'] == "device") {
          isUnloacked = true;

          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "reading") {
            sop2 = dataMap['data']['content'].toString();
            sp02Reading = true;
          }
          if (dataMap['data']['content'] != null &&
              dataMap['data']['type'] == "result") {
            sp02Reading = false;
          }

          log(sop2);
        }
        
         else {
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

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.theme.secondary),
            child: Center(
              child: Icon(
                Icons.chevron_left,
                color: context.theme.primary,
              ),
            ),
          ),
        ),
        backgroundColor: context.theme.primary,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CheckupHeaderWidget(),
            UnloackWidget(
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
                        "patientID": "P8308",
                        "doctorID": "D1204",
                        "appointmentID": "AP123456",
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
              onpress: isUnloacked
                  ? () {
                      publishMy({
                        "id": "KC_EC94CB6F61DC",
                        "patientID": "P8308",
                        "doctorID": "D1204",
                        "appointmentID": "AP123456",
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
        Spo2Widget(isReading: sp02Reading,
              onpress: isUnloacked
                  ? () {
                      publishMy({
                        "id": "KC_EC94CB6F61DC",
                        "patientID": "P8308",
                        "doctorID": "D1204",
                        "appointmentID": "AP123456",
                        "type": "Doctor",
                        "command": "device",
                        "number": 3,
                        "date": DateTime.now().millisecondsSinceEpoch
                      }, "KC_EC94CB6F61DC/device");
                    }
                  : () => Toast.showToast(
                      context: context, message: "Please Unlock"),
              spo2: sop2,),
          ],
        ),
      ),
    );
  }
}
