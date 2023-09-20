import 'package:dartz/dartz.dart';
import '../../../../core/failiar/main_failures.dart';
import '../../data/model/delete_prescription_model.dart';


abstract class DeletePrescriptionRepository {
  Future<Either<MainFailure, DeletePrescriptionModel>> deletePrescription({
    required String id,
  });
}
