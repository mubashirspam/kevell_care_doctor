import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care_dr/configure/api/endpoints.dart';
import 'package:kevell_care_dr/features/prescription/data/model/prescription_list_model.dart';
import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/repositories/update_prescription_repository.dart';

@LazySingleton(as: UpdatePrescriptionListRepository)
class UpdatePrescriptionListRepoImpliment
    implements UpdatePrescriptionListRepository {
  @override
  Future<Either<MainFailure, PrescriptionModel>> updatePrescriptionList({
    required PrescriptionModel prescriptionModel,
  }) async {
    try {
      final token = await getTokenFromSS(secureStoreKey);
      final id = await getTokenFromSS(drIdsecureStoreKey);

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };
      final data = prescriptionModel.toJson();

      final response = await Dio(BaseOptions()).post(
          ApiEndPoints.updatePrescription,
          options: Options(headers: headers),
          data: data);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = PrescriptionModel.fromJson(response.data);
        log(result.toString());

        return Right(result);
      } else if (response.statusCode == 400 || response.statusCode == 401) {
        final result = FailuerModel.fromJson(response.data);
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
