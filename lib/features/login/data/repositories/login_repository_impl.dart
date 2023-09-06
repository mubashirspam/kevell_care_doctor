import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/configure/api/endpoints.dart';
import 'package:dr_kevell/features/login/data/models/login_model.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';

import '../../domain/repositories/login_repository.dart';

@LazySingleton(as: LoginRepository)
class LoginRepoImpliment implements LoginRepository {
  @override
  Future<Either<MainFailure, LoginModel>> login({
    required String email,
    required String password,
  }) async {
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
        if (e.response?.statusCode == 400 || e.response?.statusCode == 401) {
          log(e.toString());
          final result = FailureModel.fromJson(e.response!.data);
          return Left(
              MainFailure.unauthorized(message: result.message ?? "Error"));
        }
      }
      return const Left(MainFailure.clientFailure());
    }
  }
}
