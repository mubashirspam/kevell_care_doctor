import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care_dr/configure/api/endpoints.dart';
import 'package:kevell_care_dr/features/profile/data/models/profile_model.dart';
import '../../../../core/failiar/main_failures.dart';
// import '../../../../core/network/netwrok.dart';
import '../../domain/repositories/get_profile_repository.dart';

@LazySingleton(as: GetProfileRepository)
class GetProfileRepoImpliment implements GetProfileRepository {
  // final NetworkInfo networkInfo;

  // GetProfileRepoImpliment({
  //   required this.networkInfo,
  // });
  @override
  Future<Either<MainFailure, ProfileModel>> getProfile() async {
    // if (await networkInfo.isConnected) {

    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.getprofile, data: jsonEncode(""));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ProfileModel.fromJson(response.data);
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
