import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care_dr/configure/api/endpoints.dart';
import 'package:kevell_care_dr/features/login/data/models/login_model.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';

import '../../domain/repositories/login_repository.dart';

@LazySingleton(as: LoginRepository)
class LoginRepoImpliment implements LoginRepository {
  // final NetworkInfo networkInfo;

  // LoginRepoImpliment({
  //   required this.networkInfo,
  // });
  @override
  Future<Either<MainFailure, LoginModel>> login({
    required String email,
    required String password,
  }) async {
    // if (await networkInfo.isConnected) {
    try {
      final response = await Dio(BaseOptions()).get(
        ApiEndPoints.login,
        queryParameters: {
          'Emailid': email,
          'password': password,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = LoginModel.fromJson(response.data);
        log(result.toString());

        return Right(result);
      }  else if (response.statusCode == 400 || response.statusCode == 401) {
        final result = FailuerModel.fromJson(response.data);
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
