
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care_dr/configure/api/endpoints.dart';
import 'package:kevell_care_dr/features/signup/data/models/signup_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/repositories/signup_repository.dart';

@LazySingleton(as: SignupRepository)
class SignupRepoImpliment implements SignupRepository {
  // final NetworkInfo networkInfo;

  // SignupRepoImpliment({
  //   required this.networkInfo,
  // });
  @override
  Future<Either<MainFailure, SignupModel>> signup({
    required String email,
    required String phone,
    required String fullName,
    required String password,
  }) async {
    // if (await networkInfo.isConnected) {
    try {
      final response = await Dio(BaseOptions()).post(
        ApiEndPoints.register,
        queryParameters: {
          "username": fullName,
          "email": email,
          "mobile":phone,
          "password": password,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final registerResult = SignupModel.fromJson(response.data);
        log(registerResult.toString());

        return Right(registerResult);
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
