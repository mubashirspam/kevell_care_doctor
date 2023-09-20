import 'package:dartz/dartz.dart';
import 'package:dr_kevell/features/checkup/data/model/end_appoinment_model.dart';

import '../../../../core/failiar/main_failures.dart';

abstract class EndAppoinmentRepository {
  Future<Either<MainFailure, EndAppoinmentModel>> endAppoinment({
    required String patientId,
    required String appoinmentId,
  });
}
