import 'package:dartz/dartz.dart';
import 'package:kevell_care_dr/features/home/data/models/status_model.dart';


import '../../../../core/failiar/main_failures.dart';

abstract class GetHomeStatusRepository {
  Future<Either<MainFailure, HomeStatusModel>> getHomeStatus();
}
