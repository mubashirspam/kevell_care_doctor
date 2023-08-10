import 'package:dartz/dartz.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../data/models/delete_schedule_model.dart';

abstract class DeleteScheduleRepository {
  Future<Either<MainFailure, DeleteScheduleModel>> deleteSchedule({
    required String id,
  });
}
