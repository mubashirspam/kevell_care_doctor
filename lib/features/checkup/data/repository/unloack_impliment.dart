import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

import '../../../../core/failiar/main_failures.dart';

import '../../domain/repository/unlock_mqtt_repository.dart';
import 'MQTTManager.dart';

@LazySingleton(as: UnloackRepository)
class UnloackRepoImpliment implements UnloackRepository {
  final MQTTManager _manager = MQTTManager();

  @override
  Future<Either<MainFailure, bool>> unloack({
    required Map<String, dynamic> payload,
    required String topic,
  }) async {
    try {
      _manager.publishMy(payload, topic);

      return right(true);
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
