import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:typed_data/typed_buffers.dart';

import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

part 'checkup_event.dart';
part 'checkup_state.dart';
part 'checkup_bloc.freezed.dart';

@injectable
class CheckupBloc extends Bloc<CheckupEvent, CheckupState> {
  final client = MqttServerClient('3.86.51.160', '');
  String username = 'kzeus';
  String passwd = 'Kelloo8*';
  String clientIdentifier = 'clientIdentifier12312';
  var pongCount = 3;
  String subTopic = 'KC_EC94CB6F61DC/app';

  Map<String, dynamic> requestData = {
    'id': '100001',
    'Kittype': 'patientkit',
    'Type': 'Doctor',
    'PateintID': 'P8007',
    'command': 'unlock',
    'data': {
      'patient_id': 'P8007',
      'patient_name': 'kalimuthu',
      'email': 'kali@gmail.com',
      'age': '25',
      'mobileno': '8521474587',
      'gender': 'Male',
      'reasonformeetingdoctor': 'Health problem',
      'preexistingdisease': 'Depression, Asthma',
      'doctorname': 'Dr. S. Meenakshi Sundaram',
    },
    'date': 1623846701.524423,
  };

  // Convert the request data to JSON

  CheckupBloc() : super(CheckupState.initial()) {
    on<_UnloackKIt>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          message: "Connecting...",
        ),
      );

      final requestDataJson = jsonEncode(requestData);
      final requestBuffer = Uint8Buffer();
      requestBuffer.addAll(utf8.encode(requestDataJson));

      client.port = 1883;
      client.websocketProtocols = MqttClientConstants.protocolsSingleDefault;
      client.logging(on: true);
      client.keepAlivePeriod = 20;

      final connMess = MqttConnectMessage()
          .withClientIdentifier('clientIdentifier12312')
          .startClean()
          .withWillQos(MqttQos.atLeastOnce);
      client.connectionMessage = connMess;
      log('KevellCare : client connecting....');

      try {
        await client.connect(username, passwd);
      } on NoConnectionException catch (e) {
        emit(
          state.copyWith(
            isLoading: false,
            error: true,
            message: "KevellCare :client exception - $e",
          ),
        );
        log('KevellCare :client exception - $e');
        client.disconnect();
      } on SocketException catch (e) {
        emit(
          state.copyWith(
            isLoading: false,
            error: true,
            message: e.message,
          ),
        );
        log('KevellCare :socket exception - $e');
        client.disconnect();
      }
      if (client.connectionStatus!.state == MqttConnectionState.connected) {
        emit(
          state.copyWith(
            isLoading: false,
            isServerConnected: true,
            message: 'client connected',
          ),
        );
        log('KevellCare : client connected');

        client.subscribe(subTopic, MqttQos.atMostOnce);
        log('KevellCare : client subscribed');

        StreamSubscription subscription = client.updates!.listen(onMessage);
        log(subscription.toString());
      } else {
        log('KevellCare :ERROR  client connection failed - disconnecting, status is ${client.connectionStatus}');
        client.disconnect();
      }

      // client.updates!.listen((List<MqttReceivedMessage<MqttMessage?>>? c) {
      //   final recMess = c![0].payload as MqttPublishMessage;
      //   final pt =
      //       MqttPublishPayload.bytesToStringAsString(recMess.payload.message);

      //   log('KevellCare :Change notification:: topic is <${c[0].topic}>, payload is <-- $pt -->');
      //   log('');

      //   // Emit the received data to the UI using the `emit` function
      //   emit(
      //     state.copyWith(
      //       message: pt, // Store the received data in the state
      //     ),
      //   );
      // });
    });

    on<_LoackKIt>((event, emit) async {
      client.unsubscribe(subTopic);
      client.disconnect();

      emit(
        state.copyWith(
          isLoading: false,
          error: false,
          message: 'Disconnected',
          isConnected: false,
          isServerConnected: false,
        ),
      );
    });
  }

//   Future<int> connect() async {
//     // client.useWebSocket = true;

//     // client.port = 8080;

//     client.port = 1883;

//     client.websocketProtocols = MqttClientConstants.protocolsSingleDefault;

//     client.logging(on: true);

//     // client.setProtocolV311();

//     client.keepAlivePeriod = 20;

//     // client.connectTimeoutPeriod = 2000; // milliseconds

//     client.onDisconnected = onDisconnected;

//     client.onConnected = onConnected;

//     client.onSubscribed = onSubscribed;

//     client.pongCallback = pong;

//     final connMess = MqttConnectMessage()
//         .withClientIdentifier('clientIdentifier12312')
//         .startClean() // Non persistent session for testing
//         .withWillQos(MqttQos.atLeastOnce);

//     log('KevellCare : client connecting....');

//     client.connectionMessage = connMess;

//     try {
//       await client.connect(username, passwd);
//     } on NoConnectionException catch (e) {
//       // Raised by the client when connection fails.
//       log('KevellCare :client exception - $e');
//       client.disconnect();
//     } on SocketException catch (e) {
//       // Raised by the socket layer
//       log('KevellCare :socket exception - $e');
//       client.disconnect();
//     }

//     if (client.connectionStatus!.state == MqttConnectionState.connected) {
//       log('KevellCare : client connected');
//     } else {
//       log('KevellCare :ERROR  client connection failed - disconnecting, status is ${client.connectionStatus}');
//       client.disconnect();
//       // exit(-1);
//     }

//     log('KevellCare :Subscribing to the test/lol topic');

//     // const topic = 'test/lol'; // Not a wildcard topic

//     // const topic = 'KC_EC94CB6F61DC/#'; // Not a wildcard topic

//     const pub_topic = 'KC_EC94CB6F61DC/device'; // Not a wildcard topic
//     const sub_topic = 'KC_EC94CB6F61DC/app'; // Not a wildcard topic

//     client.subscribe(sub_topic, MqttQos.atMostOnce);

  // client.updates!.listen((List<MqttReceivedMessage<MqttMessage?>>? c) {
  //   final recMess = c![0].payload as MqttPublishMessage;
  //   final pt =
  //       MqttPublishPayload.bytesToStringAsString(recMess.payload.message);

  //   log('KevellCare :Change notification:: topic is <${c[0].topic}>, payload is <-- $pt -->');
  //   log('');
  // });

//     client.published!.listen((MqttPublishMessage message) {
//       log('KevellCare :Published notification:: topic is ${message.variableHeader!.topicName}, with Qos ${message.header!.qos}');
//     });

//     const pubTopic = 'Dart/Mqtt_client/testtopic';
//     final builder = MqttClientPayloadBuilder();
//     builder.addString('Hello from mqtt_client');

//     log('KevellCare :Subscribing to the Dart/Mqtt_client/testtopic topic');
//     client.subscribe(pubTopic, MqttQos.exactlyOnce);

//     log('KevellCare :Publishing our topic');
//     client.publishMessage(pubTopic, MqttQos.exactlyOnce, builder.payload!);

//     log('KevellCare :Sleeping....');
//     await MqttUtilities.asyncSleep(60);

//     log('KevellCare :Unsubscribing');
//     client.unsubscribe(sub_topic);

//     await MqttUtilities.asyncSleep(2);
//     log('KevellCare :Disconnecting');
//     client.disconnect();
//     log('KevellCare :Exiting normally');
//     return 0;
//   }

//   void onSubscribed(String topic) {
//     log('KevellCare :Subscription confirmed for topic $topic');
//   }

//   void onDisconnected() {
//     log('KevellCare :OnDisconnected client callback - Client disconnection');
//     if (client.connectionStatus!.disconnectionOrigin ==
//         MqttDisconnectionOrigin.solicited) {
//       log('KevellCare :OnDisconnected callback is solicited, this is correct');
//     } else {
//       log('KevellCare :OnDisconnected callback is unsolicited or none, this is incorrect - exiting');
//       // exit(-1);
//     }
//     if (pongCount == 3) {
//       log('KevellCare : Pong count is correct');
//     } else {
//       log('KevellCare : Pong count is incorrect, expected 3. actual $pongCount');
//     }
//   }

//   void onConnected() {
//     log('KevellCare :OnConnected client callback - Client connection was successful');
//   }

//   void pong() {
//     log('KevellCare :Ping response client callback invoked');
//     pongCount++;
//   }

  void onMessage(List<MqttReceivedMessage> event) {
    final MqttPublishMessage recMess = event[0].payload as MqttPublishMessage;
    final String message =
        MqttPublishPayload.bytesToStringAsString(recMess.payload.message);

    log(message);
  }
}
