import 'package:dartz/dartz.dart';



import '../../../../core/failiar/main_failures.dart';
import '../../data/model/prescription_model.dart';

abstract class GetPrescriptionListRepository {
  Future<Either<MainFailure, PrescriptionModel>> getPrescriptionList(
      {required int appointmentId});
}
