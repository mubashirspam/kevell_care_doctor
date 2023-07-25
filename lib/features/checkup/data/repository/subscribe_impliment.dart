import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

import '../../../../core/failiar/main_failures.dart';
import '../../domain/repository/subscribe_mqtt_repository.dart';
import 'dart:math' as m;

import '../model/MQTTAppState.dart';
import 'MQTTManager.dart';

@LazySingleton(as: SubscribeRepository)
class SubscribetRepoImpliment implements SubscribeRepository {
  final MQTTManager _manager = MQTTManager();

// String username = 'kzeus';
  // String passwd = 'Kelloo8*';
  // final String broker = "3.86.51.160";

  // final String broker = "broker.hivemq.com";
  // final int port = 1883;
  // final String username = "";
  // final String password = "";
  // final String clientId =
  //     "kevellApp${m.Random().nextInt(99999)}_${m.Random().nextInt(8888)}";

  @override
  Future<Either<MainFailure, bool>> subscribe(
      {required String topic, required MQTTAppConnectionState state}) async {
    // _client = MqttServerClient.withPort(broker, "clientId", port);
    // _client!.keepAlivePeriod = 20;
    // _client!.secure = false;
    // _client!.websocketProtocols = MqttClientConstants.protocolsSingleDefault;
    // _client!.logging(on: true);

    // final MqttConnectMessage connMess = MqttConnectMessage()
    //     .withWillTopic('willtopic')
    //     .withWillMessage('Will message')
    //     .startClean()
    //     .withWillQos(MqttQos.atLeastOnce);
    // log('EXAMPLE::kevell client connecting....');
    // _client!.connectionMessage = connMess;
    // _client!.onSubscribed = (topic) => log("Subscribed topic $topic");

    try {
      _manager.initializeMQTTClient();

      await _manager.connect();

      if (state == MQTTAppConnectionState.connectedSubscribed) {
        _manager.unSubscribeFromCurrentTopic();

        return const Left(MainFailure.clientFailure());
      } else {
        _manager.subScribeTo("KC_EC94CB6F61DC/app");

        return const Right(true);
      }

      // if (_client!.connectionStatus!.state == MqttConnectionState.connected) {
      //   log('KevellCare : client connected');
      //   _client!.subscribe(topic, MqttQos.atLeastOnce);

      //   _client!.onSubscribed = (topic) => log("Subscribed topic $topic");

      //   _client!.updates!.listen((List<MqttReceivedMessage<MqttMessage?>>? c) {
      //     final MqttPublishMessage recMess =
      //         c![0].payload as MqttPublishMessage;
      //     final String pt =
      //         MqttPublishPayload.bytesToStringAsString(recMess.payload.message);

      //     log('EXAMPLE::Change notification:: topic is <${c[0].topic}>, payload is <-- $pt -->');
      //   });

      //   return const Right(true);
      // } else {
      //   log('KevellCare :ERROR  client connection failed - disconnecting, status is ${_client!.connectionStatus}');
      //   _client!.disconnect();
      //   return const Left(MainFailure.serverFailure());
      // }
    } on NoConnectionException catch (e) {
      log('KevellCare :client exception - $e');
      // _client!.disconnect();
      return const Left(MainFailure.serverFailure());
    } on SocketException catch (e) {
      log('KevellCare :socket exception - $e');
      // _client!.disconnect();
      return const Left(MainFailure.clientFailure());
    }
  }
}
