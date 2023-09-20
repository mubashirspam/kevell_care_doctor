import 'package:dartz/dartz.dart';
import 'package:dr_kevell/features/home/data/models/status_model.dart';

import '../../../../core/failiar/main_failures.dart';

abstract class GetHomeStatusRepository {
  Future<Either<MainFailure, HomeStatusModel>> getHomeStatus();
}
