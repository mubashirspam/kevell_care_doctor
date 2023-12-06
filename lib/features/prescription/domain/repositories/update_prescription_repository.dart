import 'package:dartz/dartz.dart';

import '../../../../core/failiar/main_failures.dart';
import '../../data/model/prescription_model.dart';


abstract class UpdatePrescriptionListRepository {
  Future<Either<MainFailure, PrescriptionModel>> updatePrescriptionList({
    required Map<String, dynamic> payload,
  });
}
