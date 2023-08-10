import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/configure/api/endpoints.dart';

import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/repositories/delete_schdule_repository.dart';
import '../models/delete_schedule_model.dart';

@LazySingleton(as: DeleteScheduleRepository)
class DeleteScheduleRepoImpliment implements DeleteScheduleRepository {
  @override
  Future<Either<MainFailure, DeleteScheduleModel>> deleteSchedule({
    required String id,
  }) async {
    try {
      final response = await Dio(BaseOptions()).delete(
        ApiEndPoints.deleteSchedule,
        data: {"id": id},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = DeleteScheduleModel.fromJson(response.data);
        log(result.toString());

        return Right(result);
      } else if (response.statusCode == 400 || response.statusCode == 401) {
        final result = DeleteScheduleModel.fromJson(response.data);
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
