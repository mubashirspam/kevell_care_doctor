import 'package:dartz/dartz.dart';
import '../../../../core/failiar/main_failures.dart';


import '../../data/models/update_schedul_model.dart';
import '../entities/update_schedule.dart';


abstract class UpdateScheduleRepository {
  Future<Either<MainFailure, UpdateScheduleModel>> updateSchedule({
    required UpdateSchedulePayload schedulePayload,
  });
}
