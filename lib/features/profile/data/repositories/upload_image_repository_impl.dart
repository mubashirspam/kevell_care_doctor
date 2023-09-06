import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dr_kevell/features/profile/data/models/profile_model.dart';

import 'package:injectable/injectable.dart';
import 'package:dr_kevell/configure/api/endpoints.dart';
import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';

import '../../domain/repositories/upload_image_repository.dart';

@LazySingleton(as: UploadImageRepository)
class UploadImageRepoImpliment implements UploadImageRepository {
  @override
  Future<Either<MainFailure, ProfileModel>> uploaadImage({
    required File image,
  }) async {
    try {
      final token = await getTokenFromSS(secureStoreKey);

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      FormData formData = FormData.fromMap({
        'ProfileImagelink': await MultipartFile.fromFile(image.path),
      });
      final response = await Dio(BaseOptions()).put(
        ApiEndPoints.updateProfile,
        options: Options(headers: headers),
        data: formData,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ProfileModel.fromJson(response.data);
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
