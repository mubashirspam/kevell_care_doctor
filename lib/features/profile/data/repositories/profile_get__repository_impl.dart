import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/settings/api/endpoints.dart';
import 'package:dr_kevell/features/profile/data/models/profile_model.dart';
import '../../../../settings/value/constant.dart';
import '../../../../settings/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
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
      final token = await getTokenFromSS(secureStoreKey);
      final id = await getTokenFromSS(drIdsecureStoreKey);

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };


      final response = await Dio(BaseOptions()).get(
        "${V2.fetchProfile}?doctor_id=$id",
        options: Options(
          headers: headers,
          validateStatus: (_) => true,
        ),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ProfileModel.fromJson(response.data);
        log("Profile : ${result.toJson().toString()}");
        return Right(result);
      } else if (response.statusCode == 400 || response.statusCode == 401) {
        final result = FailureModel.fromJson(response.data);

        return Left(
            MainFailure.unauthorized(message: result.message ?? "Error"));
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }

    // } else {
    //   return const Left(MainFailure.clientFailure());
    // }
  }
}
