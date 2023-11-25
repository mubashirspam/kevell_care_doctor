import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dr_kevell/features/checkup/data/model/end_appoinment_model.dart';
import 'package:dr_kevell/settings/value/constant.dart';
import 'package:dr_kevell/settings/value/secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/settings/api/endpoints.dart';

import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/repository/end_appoinment_repository.dart';

@LazySingleton(as: EndAppoinmentRepository)
class EndAppoinmentRepoImpliment implements EndAppoinmentRepository {
  @override
  Future<Either<MainFailure, EndAppoinmentModel>> endAppoinment({
    required String patientId,
    required String appoinmentId,
  }) async {
    try {
      final token = await getTokenFromSS(secureStoreKey);


      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      final response = await Dio(BaseOptions()).post(
        ApiEndPoints.endAppoinment,
        options: Options(headers: headers),
        data: {"patient_id": patientId, "Appoinment_id": appoinmentId},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = EndAppoinmentModel.fromJson(response.data);
        log(result.toJson().toString());

        return Right(result);
      } else if (response.statusCode == 400 || response.statusCode == 401) {
        final result = FailureModel.fromJson(response.data);
        return Left(
            MainFailure.unauthorized(message: result.message ?? "Error"));
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      if (e is DioException) {
        log(e.toString());
        if (e.response?.statusCode == 400 && e.response?.statusCode == 401) {
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
