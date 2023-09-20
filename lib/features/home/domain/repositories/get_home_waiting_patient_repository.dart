import 'package:dartz/dartz.dart';
import 'package:dr_kevell/features/home/data/models/waiting_patient_model.dart';

import '../../../../core/failiar/main_failures.dart';

abstract class GetWaitingPatientRepository {
  Future<Either<MainFailure, HomeWaitingPatientModel>> getHomeWaitingPatient();
}
