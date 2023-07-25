import 'package:dartz/dartz.dart';
import 'package:dr_kevell/features/prescription/data/model/prescription_list_model.dart';


import '../../../../core/failiar/main_failures.dart';

abstract class UpdatePrescriptionListRepository {
  Future<Either<MainFailure, PrescriptionModel>> updatePrescriptionList({ required PrescriptionElement prescriptionElement,});
}
