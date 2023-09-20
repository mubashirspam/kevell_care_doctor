import 'package:dartz/dartz.dart';
import 'package:dr_kevell/features/profile/data/models/profile_model.dart';

import '../../../../core/failiar/main_failures.dart';

abstract class GetProfileRepository {
  Future<Either<MainFailure, ProfileModel>> getProfile();
}
