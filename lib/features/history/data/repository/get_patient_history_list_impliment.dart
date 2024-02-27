import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/features/history/data/model/history_patient_list_model.dart';

import '../../../../settings/api/endpoints.dart';
import '../../../../settings/value/constant.dart';
import '../../../../settings/value/secure_storage.dart';

import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/repositories/get_patient_history_list_repository.dart';

@LazySingleton(as: GetPatientHistoryListRepository)
class GetPatientHistoryListRepoImpliment
    implements GetPatientHistoryListRepository {
  @override
  Future<Either<MainFailure, HistoryPatientListModel>> gePatientHistoryList({
    required String fromDate,
    required String toDate,
  }) async {
    try {
      final token = await getTokenFromSS(secureStoreKey);

      final id = await getTokenFromSS(drIdsecureStoreKey);

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      final response = await Dio(BaseOptions()).post(
        V2.history,
        options: Options(headers: headers),
        data: {
          'doctor_id': int.parse(id.toString()),
          "from_date": fromDate,
          "to_date": toDate
        },
      );

      switch (response.statusCode) {
        case 200:
        case 201:
          final result = HistoryPatientListModel.fromJson(response.data);
          log(result.toString());
          return Right(result);
        case 204:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.noDatafound(message: result.message ?? "No data found"),
          );
        case 401:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.unauthorized(message: result.message ?? "Unauthorized"),
          );
        case 403:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.forbidden(message: result.message ?? "Forbidden"),
          );
        case 502:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.serverFailure(
                message: result.message ?? "Internal Server Error"),
          );
        case 503:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.serviceUnavailable(
                message: result.message ?? "Service Unavailable"),
          );
        default:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.unknown(message: result.message ?? "Unknown error"),
          );
      }
    } catch (e) {
      if (e is DioException) {
        log(e.toString());
        if (e.response?.statusCode == 401) {
          log(e.toString());
          final result = FailureModel.fromJson(e.response!.data);
          return Left(
            MainFailure.unauthorized(message: result.message ?? "Unauthorized"),
          );
        }
      }
      return const Left(MainFailure.clientFailure(message: "Client failure"));
    }
  }
}
