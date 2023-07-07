import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care_dr/configure/api/endpoints.dart';
import 'package:kevell_care_dr/features/home/data/models/status_model.dart';
import '../../../../core/failiar/main_failures.dart';
// import '../../../../core/network/netwrok.dart';
import '../../domain/repositories/get_home_status_repository.dart';

@LazySingleton(as: GetHomeStatusRepository)
class GetProfileRepoImpliment implements GetHomeStatusRepository {
  // final NetworkInfo networkInfo;

  // GetProfileRepoImpliment({
  //   required this.networkInfo,
  // });
  @override
  Future<Either<MainFailure, HomeStatusModel>> getHomeStatus() async {
    // if (await networkInfo.isConnected) {

    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.getprofile, data: jsonEncode(""));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeStatusModel.fromJson(response.data);
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
