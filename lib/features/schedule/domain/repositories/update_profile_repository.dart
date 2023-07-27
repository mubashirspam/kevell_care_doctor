import 'package:dartz/dartz.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../data/models/schedule_model.dart';

abstract class CreateScheduleRepository {
  Future<Either<MainFailure, ScheduleModel>> createSchedule({
    required String fromDate,
    required String toDate,
    required String fromTime,
    required String toTime,
    required String numberOfPatient,
  });
}
