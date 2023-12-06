import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/settings/api/endpoints.dart';

import '../../../../settings/value/constant.dart';
import '../../../../settings/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';

import '../../domain/entities/create_prescription_payload.dart';
import '../../domain/repositories/create_prescription_repository.dart';
import '../model/prescription_model.dart';

@LazySingleton(as: CreatePrescriptionListRepository)
class CreatePrescriptionListRepoImpliment
    implements CreatePrescriptionListRepository {
  @override
  Future<Either<MainFailure, PrescriptionModel>> createPrescriptionList({
    required CreatePrescriptionPayload payload,
  }) async {
    try {
      final token = await getTokenFromSS(secureStoreKey);

    
      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      log(payload.toJson().toString());

      final response = await Dio(BaseOptions()).post(
        ApiEndPoints.createPrescription,
        options: Options(headers: headers,   validateStatus: (_) => true,),
        data: payload.toJson(),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = PrescriptionModel.fromJson(response.data);
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
