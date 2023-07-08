
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care_dr/configure/api/endpoints.dart';
import 'package:kevell_care_dr/features/home/data/models/status_model.dart';
import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';
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
      // String? token = await getTokenFromSS(secureStoreKey);

      final token = await getTokenFromSS(secureStoreKey);
      final id = await getTokenFromSS(drIdsecureStoreKey);

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      final response = await Dio(BaseOptions()).get(
        ApiEndPoints.homeStatus,
        options: Options(headers: headers),
        data: {'doctorId': int.parse(id.toString())},
      );

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
