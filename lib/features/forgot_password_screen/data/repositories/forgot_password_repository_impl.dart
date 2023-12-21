import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/repositories/forgot_password_repository.dart';

@LazySingleton(as: ForgotPasswordRepository)
class ForgotPasswordRepoImpliment implements ForgotPasswordRepository {
  @override
  Future<Either<MainFailure, bool>> sendOTP({
    required String email,
  }) async {
    try {
      log("called forget password $email");
      final response = await Dio().post(
          "https://kevelldigital.com/doctor/api/forgot-password",
          data: {"email": email});

      log(response.data.toString());
      switch (response.statusCode) {
        case 200:
        case 201:
          return const Right(true);

        case 401:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.unauthorized(message: result.message ?? "Unauthorized"),
          );

        default:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.unknown(message: result.message ?? "Unknown error"),
          );
      }
    } catch (e) {
      log("errro : $e");
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, bool>> setNewPassword({
    required String email,
    required String otp,
    required String passwrod,
  }) async {
    try {
      final response = await Dio().post(
        "https://kevelldigital.com/doctor/api/verify-otp",
        data: {'otp': otp, "email": email, "password": passwrod},
      );

      switch (response.statusCode) {
        case 200:
        case 201:
          return const Right(true);

        case 401:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.unauthorized(message: result.message ?? "Unauthorized"),
          );

        default:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.unknown(message: result.message ?? "Unknown error"),
          );
      }
    } catch (e) {
      log("errro : $e");
      return const Left(MainFailure.clientFailure());
    }
  }
}
