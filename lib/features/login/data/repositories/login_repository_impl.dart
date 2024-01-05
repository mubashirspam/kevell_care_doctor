import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dr_kevell/settings/value/secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/settings/api/endpoints.dart';
import 'package:dr_kevell/features/login/data/models/login_model.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';

import '../../../../settings/value/constant.dart';
import '../../domain/repositories/login_repository.dart';

@LazySingleton(as: LoginRepository)
class LoginRepoImpliment implements LoginRepository {
  @override
  Future<Either<MainFailure, LoginModel>> login({
    required String email,
    required String password,
  }) async {
    final dio = Dio();
    try {
      final fcm = await getTokenFromSS(fcmStoreKey);
      final response = await dio.post(
        V2.login,
        
        data: {
          'email_id': email,
          'password': password,
          "device_token": fcm,
          "device_type": "Android"
        },
      );

      switch (response.statusCode) {
        case 200:
        case 201:
          final result = LoginModel.fromJson(response.data);
          log(result.toString());
          return Right(result);
        case 204:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.noDatafound(message: result.message ?? "No data found"),
          );
        case 401:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.unauthorized(message: result.message ?? "Unauthorized"),
          );
        case 403:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.forbidden(message: result.message ?? "Forbidden"),
          );
        case 502:
          final result = FailureModel.fromJson(response.data);
          log(result.toString());

          return Left(
            MainFailure.serverFailure(
                message: result.message ?? "Internal Server Error"),
          );
        case 503:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.serviceUnavailable(
                message: result.message ?? "Service Unavailable"),
          );
        default:
          final result = FailureModel.fromJson(response.data);
          return Left(
            MainFailure.unknown(message: result.message ?? "Unknown error"),
          );
      }

      // if (response.statusCode == 200 || response.statusCode == 201) {
      //   final result = LoginModel.fromJson(response.data);
      //   log(result.toString());

      //   return Right(result);
      // } else if (response.statusCode == 400 || response.statusCode == 401) {
      //   final result = FailureModel.fromJson(response.data);
      //   return Left(
      //       MainFailure.unauthorized(message: result.message ?? "Error"));
      // } else {
      //   return const Left(MainFailure.serverFailure());
      // }
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
