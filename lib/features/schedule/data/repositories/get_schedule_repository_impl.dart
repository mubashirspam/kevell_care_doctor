import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dr_kevell/features/schedule/data/models/schedule_model.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/settings/api/endpoints.dart';
import '../../../../settings/value/constant.dart';
import '../../../../settings/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/repositories/get_schedule_repository.dart';

@LazySingleton(as: GetScheduleRepository)
class GetScheduleRepoImpliment implements GetScheduleRepository {
  @override
  Future<Either<MainFailure, ScheduleModel>> getSchedule() async {
    try {
      final token = await getTokenFromSS(secureStoreKey);
      final id = await getTokenFromSS(drIdsecureStoreKey);
      log(id.toString());
      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

// production
      final response = await Dio(BaseOptions()).get(
        ApiEndPoints.getSchedule,
        options: Options(headers: headers),
        data: {'doctor_id': id},
      );

      // final response = await Dio(BaseOptions()).get(
      //   ApiEndPoints.getSchedule,
      //   data: {'doctor_id': id},
      // );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ScheduleModel.fromJson(response.data);
        log(result.toString());

        return Right(result);
      } else if (response.statusCode == 400 || response.statusCode == 401) {
        final result = FailureModel.fromJson(response.data);
        return Left(
            MainFailure.unauthorized(message: result.message ?? "Error"));
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
