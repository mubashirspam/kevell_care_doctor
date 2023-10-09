import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dr_kevell/features/chat/data/model/chat_person_model.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/settings/api/endpoints.dart';

import '../../../../core/failiar/failiur_model.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../domain/repository/fetch_chat_profile_repository.dart';

@LazySingleton(as: FetchChatProfileRepository)
class FetchChatProfileRepoImpliment implements FetchChatProfileRepository {
  @override
  Future<Either<MainFailure, ChatPersonModel>> fetchChatProfile({
    required String id,
  }) async {
    final dio = Dio();

    final params = {'doctorid': '1014'};
    try {
      final response =
          await dio.get(ApiEndPoints.fetchChatProfile, queryParameters: params);

      if (response.statusCode == 200 || response.statusCode == 200) {
        final result = ChatPersonModel.fromJson(response.data);
        log('Response Data: $response');
        return Right(result);
      } else {
        // Handle other status codes here
        log('Request failed with status: ${response.statusCode}');
        return Left(MainFailure.unauthorized(message: "Error"));
      }
    } catch (e) {
      if (e is DioException) {
        log(e.toString());
        if (e.response?.statusCode == 400 && e.response?.statusCode == 401) {
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
