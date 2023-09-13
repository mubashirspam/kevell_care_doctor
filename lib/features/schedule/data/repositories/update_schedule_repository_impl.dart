import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/settings/api/endpoints.dart';

import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';

import '../../domain/entities/update_schedule.dart';
import '../../domain/repositories/update_schedule_repository.dart';

import '../models/update_schedul_model.dart';

@LazySingleton(as: UpdateScheduleRepository)
class UpdateScheduleRepoImpliment implements UpdateScheduleRepository {
  @override
  Future<Either<MainFailure, UpdateScheduleModel>> updateSchedule({
    required UpdateSchedulePayload schedulePayload,
  }) async {
    // if (await networkInfo.isConnected) {
    try {
      // final token = await getTokenFromSS(secureStoreKey);
      // final id = await getTokenFromSS(drIdsecureStoreKey);

      // final headers = {
      //   'Authorization': 'Bearer $token',
      //   'Content-Type': 'application/json',
      // };

      // final response = await Dio(BaseOptions()).post(
      //   ApiEndPoints.createSchedule,
      //   options: Options(headers: headers),
      //   data: schedulePayload.toJson(),
      // );

      final response = await Dio(BaseOptions()).put(
        ApiEndPoints.updateSchedule,
        data: schedulePayload.toJson(),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = UpdateScheduleModel.fromJson(response.data);
        log(result.toString());

        return Right(result);
      } else if (response.statusCode == 400 || response.statusCode == 401) {
        final result = UpdateScheduleModel.fromJson(response.data);
        return Left(
            MainFailure.unauthorized(message: result.message ?? "Error"));
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      if (e is DioException) {
        log(e.toString());
        if (e.response?.statusCode == 400) {
          log(e.toString());
          final result = FailureModel.fromJson(e.response!.data);
          return Left(
              MainFailure.unauthorized(message: result.message ?? "Error"));
        }
      }
      return const Left(MainFailure.clientFailure());
    }
  }
}
