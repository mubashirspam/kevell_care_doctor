import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/settings/api/endpoints.dart';
import 'package:dr_kevell/features/home/data/models/waiting_patient_model.dart';

import '../../../../settings/value/constant.dart';
import '../../../../settings/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
// import '../../../../core/network/netwrok.dart';
import '../../domain/repositories/get_home_waiting_patient_repository.dart';

@LazySingleton(as: GetWaitingPatientRepository)
class UpdateProfileRepoImpliment implements GetWaitingPatientRepository {
  // final NetworkInfo networkInfo;

  // UpdateProfileRepoImpliment({
  //   required this.networkInfo,
  // });
  @override
  Future<Either<MainFailure, HomeWaitingPatientModel>>
      getHomeWaitingPatient() async {
    // if (await networkInfo.isConnected) {
    try {
      final token = await getTokenFromSS(secureStoreKey);
      final id = await getTokenFromSS(drIdsecureStoreKey);

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      final response = await Dio(BaseOptions()).get(
        ApiEndPoints.homeWaitingPatient,
        options: Options(
          headers: headers,
          validateStatus: (_) => true,
        ),
        data: {'doctorId': int.parse(id.toString())},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeWaitingPatientModel.fromJson(response.data);
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
        if (e.response?.statusCode == 400 || e.response?.statusCode == 401) {
          final result = FailureModel.fromJson(e.response!.data);
          return Left(
              MainFailure.unauthorized(message: result.message ?? "Error"));
        }
      }
      return const Left(MainFailure.clientFailure());
    }
  }
}
