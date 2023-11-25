import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/settings/api/endpoints.dart';

import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';

import '../../../../settings/value/constant.dart';
import '../../../../settings/value/secure_storage.dart';
import '../../domain/repositories/delete_prescription_repository.dart';
import '../model/delete_prescription_model.dart';

@LazySingleton(as: DeletePrescriptionRepository)
class DeletePrescriptionRepoImpliment implements DeletePrescriptionRepository {
  @override
  Future<Either<MainFailure, DeletePrescriptionModel>> deletePrescription({
    required int pno,
    required int appoinmentId,
  }) async {
    try {
      final token = await getTokenFromSS(secureStoreKey);
      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      final response = await Dio(BaseOptions()).delete(
          ApiEndPoints.deletePrescription,
          options: Options(headers: headers,),
          data: {"appointment_id": appoinmentId, "pno": pno});

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = DeletePrescriptionModel.fromJson(response.data);
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
      if (e is DioException) {
        log("Prescrption $e");
        if (e.response?.statusCode == 400) {
          log("Prescrption $e");
          final result = FailureModel.fromJson(e.response!.data);
          return Left(
              MainFailure.unauthorized(message: result.message ?? "Error"));
        }
      }
      return const Left(MainFailure.clientFailure());
    }
  }
}
