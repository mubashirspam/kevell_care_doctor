import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care_dr/configure/api/endpoints.dart';
import 'package:kevell_care_dr/features/home/data/models/waiting_patient_model.dart';

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
      final response = await Dio(BaseOptions())
          .post(ApiEndPoints.updateProfile, data: jsonEncode(""));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeWaitingPatientModel.fromJson(response.data);
        log(result.toString());

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.unauthorized());
    }
    // } else {
    //   return const Left(MainFailure.clientFailure());
    // }
  }
}
