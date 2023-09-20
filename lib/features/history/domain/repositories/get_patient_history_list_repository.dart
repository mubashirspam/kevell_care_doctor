import 'package:dartz/dartz.dart';



import '../../../../core/failiar/main_failures.dart';
import '../../data/model/history_patient_list_model.dart';

abstract class GetPatientHistoryListRepository {
  Future<Either<MainFailure, HistoryPatientListModel>> gePatientHistoryList({
    required String fromDate,
    required String toDate,
  });
}
