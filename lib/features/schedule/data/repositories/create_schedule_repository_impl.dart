import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/configure/api/endpoints.dart';

import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/entities/create_schedule.dart';
import '../../domain/repositories/create_schedule_repository.dart';
import '../models/create_schedule_model.dart';

@LazySingleton(as: CreateScheduleRepository)
class CreateScheduleRepoImpliment implements CreateScheduleRepository {
  @override
  Future<Either<MainFailure, CreateScheduleModel>> createSchedule({
    required SchedulePayload schedulePayload,
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

      final response = await Dio(BaseOptions()).post(
        ApiEndPoints.createSchedule,
        data: schedulePayload.toJson(),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = CreateScheduleModel.fromJson(response.data);
        log(result.toString());

        return Right(result);
      } else if (response.statusCode == 400 || response.statusCode == 401) {
        final result = CreateScheduleModel.fromJson(response.data);
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
          final result = FailuerModel.fromJson(e.response!.data);
          return Left(
              MainFailure.unauthorized(message: result.message ?? "Error"));
        }
      }
      return const Left(MainFailure.clientFailure());
    }
  }
}
