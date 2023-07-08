import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care_dr/configure/api/endpoints.dart';
import 'package:kevell_care_dr/features/profile/data/models/profile_model.dart';
import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';
import '../../../../core/failiar/main_failures.dart';
// import '../../../../core/network/netwrok.dart';
import '../../domain/repositories/update_profile_repository.dart';

@LazySingleton(as: UpdateProfileRepository)
class UpdateProfileRepoImpliment implements UpdateProfileRepository {
  // final NetworkInfo networkInfo;

  // UpdateProfileRepoImpliment({
  //   required this.networkInfo,
  // });
  @override
  Future<Either<MainFailure, ProfileModel>> updateProfile({
    required String name,
    required String dob,
    required String address,
    required String mobileNumber,
  }) async {
    // if (await networkInfo.isConnected) {
    try {
      final token = await getTokenFromSS(secureStoreKey);
      final id = await getTokenFromSS(drIdsecureStoreKey);

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      final response = await Dio(BaseOptions()).post(
        ApiEndPoints.updateProfile,
        options: Options(headers: headers),
        data: {
          "id": int.parse("$id"),
          "username": name,
          "mobile": mobileNumber,
          // "dob": dob,
          "Address": address
        },
      );

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
