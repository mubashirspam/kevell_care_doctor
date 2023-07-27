import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dr_kevell/features/schedule/data/models/schedule_model.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/configure/api/endpoints.dart';
import '../../../../configure/value/constant.dart';
import '../../../../configure/value/secure_storage.dart';
import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
// import '../../../../core/network/netwrok.dart';
import '../../domain/repositories/get_schedule_repository.dart';

@LazySingleton(as: GetScheduleRepository)
class GetScheduleRepoImpliment implements GetScheduleRepository {

  @override
  Future<Either<MainFailure, ScheduleModel>> getSchedule() async {
   

    try {
      final token = await getTokenFromSS(secureStoreKey);
      final mail = await getTokenFromSS(mailsecureStoreKey);

      final headers = {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      };

      final response = await Dio(BaseOptions()).get(
        ApiEndPoints.getprofile,
        options: Options(headers: headers),
        data: {'Emailid': mail},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ScheduleModel.fromJson(response.data);
        log(result.toString());

        return Right(result);
      } else if (response.statusCode == 400 || response.statusCode == 401) {
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
