import 'package:dartz/dartz.dart';


import '../../../../core/failiar/main_failures.dart';
import '../../data/model/prescription_model.dart';
import '../entities/create_prescription_payload.dart';

abstract class CreatePrescriptionListRepository {
  Future<Either<MainFailure, PrescriptionModel>> createPrescriptionList({
    required CreatePrescriptionPayload payload,
  });
}
