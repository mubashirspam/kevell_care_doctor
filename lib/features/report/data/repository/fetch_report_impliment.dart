import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dr_kevell/settings/api/endpoints.dart';
import 'package:dr_kevell/settings/value/secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../../../settings/value/constant.dart';
import '../../domain/entities/fetch_report_payload.dart';
import '../../domain/repositories/fetch_report_repository.dart';
import '../model/report_model.dart';

@LazySingleton(as: FetchReportRepository)
class FetchReportRepoImpliment implements FetchReportRepository {
  @override
  Future<Either<MainFailure, ReportModel>> fetchReport({
    required FetchReportPayload fetchReportPayload,
  }) async {
    try {
      final token = await getTokenFromSS(secureStoreKey);

      

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      final response = await Dio(BaseOptions()).post(V2.report,
          options: Options(headers: headers),
          data: fetchReportPayload.toJson(),
         );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ReportModel.fromJson(response.data);

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
