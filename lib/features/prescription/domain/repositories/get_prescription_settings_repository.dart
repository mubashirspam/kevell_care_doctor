import 'package:dartz/dartz.dart';
import 'package:dr_kevell/features/prescription/data/model/prescription_settings_model.dart';


import '../../../../core/failiar/main_failures.dart';

abstract class GetPrescriptionSettingsRepository {
  Future<Either<MainFailure, PrescriptionSettingsModel>> getPrescriptionSettings();
}
