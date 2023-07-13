import 'package:dartz/dartz.dart';

import 'package:kevell_care_dr/features/prescription/data/model/prescription_list_model.dart';

import '../../../../core/failiar/main_failures.dart';

abstract class GetPrescriptionListRepository {
  Future<Either<MainFailure, PrescriptionModel>> getPrescriptionList(
      {required int appointmentId});
}
