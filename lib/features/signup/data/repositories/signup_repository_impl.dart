import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/settings/api/endpoints.dart';
import 'package:dr_kevell/features/signup/data/models/signup_model.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';

import '../../domain/repositories/signup_repository.dart';

@LazySingleton(as: SignupRepository)
class SignupRepoImpliment implements SignupRepository {
  @override
  Future<Either<MainFailure, SignupModel>> signup({
    required String email,
    required String phone,
    required String fullName,
    required String password,
  }) async {
    try {
      final response = await Dio(BaseOptions()).post(
        ApiEndPoints.register,
        data: {
          "username": fullName,
          "email": email,
          "mobile": phone,
          "password": password
        },
      );

      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final registerResult = SignupModel.fromJson(response.data);
        log(registerResult.toJson().toString());

        return Right(registerResult);
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
        if (e.response?.statusCode == 400) {
          log(e.toString());
          final result = FailureModel.fromJson(e.response!.data);
          return Left(
              MainFailure.unauthorized(message: result.message ?? "Error"));
        }
      }
      return const Left(MainFailure.clientFailure());
    }
    // } else {
    //   return const Left(MainFailure.clientFailure());
    // }
  }
}
