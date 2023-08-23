import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dr_kevell/features/report/data/model/report_general_info_model.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/configure/api/endpoints.dart';

import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/repositories/fetch_report_general_repository.dart';

@LazySingleton(as: FetchReportGeneraInfoRepository)
class FetchReportGeneraInfoRepoImpliment
    implements FetchReportGeneraInfoRepository {
  @override
  Future<Either<MainFailure, ReportGeneraInfoModel>> fetchReportGeneralinfo({
    required int id,
  }) async {
    try {
      // final token = await getTokenFromSS(secureStoreKey);
      // final id = await getTokenFromSS(drIdsecureStoreKey);

      // final headers = {
      //   'Authorization': 'Bearer $token',
      //   'Content-Type': 'application/json',
      // };

      final response = await Dio(BaseOptions()).post(
        ApiEndPoints.patientreportgeneralinfo,
        // options: Options(headers: headers),
        data: {'patientId': id},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ReportGeneraInfoModel.fromJson(response.data);
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
        if (e.response?.statusCode == 400 && e.response?.statusCode == 401) {
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
