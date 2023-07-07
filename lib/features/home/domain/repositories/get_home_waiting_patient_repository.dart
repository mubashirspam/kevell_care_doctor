import 'package:dartz/dartz.dart';
import 'package:kevell_care_dr/features/home/data/models/waiting_patient_model.dart';


import '../../../../core/failiar/main_failures.dart';

abstract class GetWaitingPatientRepository {
  Future<Either<MainFailure, HomeWaitingPatientModel>> getHomeWaitingPatient();
}
