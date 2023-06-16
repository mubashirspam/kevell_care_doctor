import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

import '../../../../core/failiar/main_failures.dart';
import '../../domain/repository/i_unlock_kit_repo.dart';

@LazySingleton(as: IUnloackKit)
class CashBooksRepository implements IUnloackKit {
  final client = MqttServerClient('3.86.51.160', '');
  String username = 'kzeus';
  String passwd = 'Kelloo8*';
  String clientIdentifier = 'clientIdentifier12312';
  var pongCount = 3;
  String subTopic = 'KC_EC94CB6F61DC/app';

  @override
  Future<Either<MainFailure, String>> getUnloackMessage() async {
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

      if (client.connectionStatus!.state == MqttConnectionState.connected) {
        log('KevellCare : client connected');
        client.subscribe(subTopic, MqttQos.atMostOnce);

        String pt = '';
        client.updates!.listen((List<MqttReceivedMessage<MqttMessage?>>? c) {
          final recMess = c![0].payload as MqttPublishMessage;
          pt =
              MqttPublishPayload.bytesToStringAsString(recMess.payload.message);

          log('KevellCare :Change notification:: topic is <${c[0].topic}>, payload is <-- $pt -->');
          log('');
        });
        return Right(pt);
      } else {
        log('KevellCare :ERROR  client connection failed - disconnecting, status is ${client.connectionStatus}');
        client.disconnect();
        return const Left(MainFailure.serverFailure());
      }
    } on NoConnectionException catch (e) {
      log('KevellCare :client exception - $e');
      client.disconnect();
      return const Left(MainFailure.serverFailure());
    } on SocketException catch (e) {
      log('KevellCare :socket exception - $e');
      client.disconnect();
      return const Left(MainFailure.serverFailure());
    }
    // try {
    //   final response = await Dio(BaseOptions()).get(
    //     EndPoints.getCashBooks,
    //   );

    //   if (response.statusCode == 200 || response.statusCode == 201) {
    //     final r = CashBook.fromJson(response.data);
    //     return Right(r);
    //   } else if (response.statusCode == 401) {
    //     return const Left(MainFailure.unauthorized());
    //   } else {
    //     return const Left(MainFailure.serverFailure());
    //   }
    // } catch (e) {
    //   if (e is DioError) {
    //     if (e.response?.statusCode == 401) {
    //       return const Left(MainFailure.unauthorized());
    //     }
    //   }
    //   return const Left(MainFailure.clientFailure());
    // }
  }
}
