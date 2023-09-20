import 'package:dartz/dartz.dart';


import '../../../../core/failiar/main_failures.dart';
import '../../data/models/schedule_model.dart';

abstract class GetScheduleRepository {
  Future<Either<MainFailure, ScheduleModel>> getSchedule();
}
