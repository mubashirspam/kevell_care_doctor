import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dr_kevell/features/schedule/data/models/schedule_model.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/configure/api/endpoints.dart';
import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/repositories/update_profile_repository.dart';

@LazySingleton(as: CreateScheduleRepository)
class CreateScheduleRepoImpliment implements CreateScheduleRepository {
  @override
  Future<Either<MainFailure, ScheduleModel>> createSchedule({
    required String fromDate,
    required String toDate,
    required String fromTime,
    required String toTime,
    required String numberOfPatient,
  }) async {
    // if (await networkInfo.isConnected) {
    try {
      final token = await getTokenFromSS(secureStoreKey);
      final id = await getTokenFromSS(drIdsecureStoreKey);

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      final response = await Dio(BaseOptions()).post(
        ApiEndPoints.updateProfile,
        options: Options(headers: headers),
        data: {},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ScheduleModel.fromJson(response.data);
        log(result.toString());

        return Right(result);
      } else if (response.statusCode == 400 || response.statusCode == 401) {
        final result = ScheduleModel.fromJson(response.data);
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
