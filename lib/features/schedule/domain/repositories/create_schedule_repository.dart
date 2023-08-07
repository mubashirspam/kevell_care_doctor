import 'package:dartz/dartz.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../data/models/create_schedule_model.dart';
import '../entities/create_schedule.dart';


abstract class CreateScheduleRepository {
  Future<Either<MainFailure, CreateScheduleModel>> createSchedule({
    required SchedulePayload schedulePayload,
  });
}
