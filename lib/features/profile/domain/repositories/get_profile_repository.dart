import 'package:dartz/dartz.dart';
import 'package:kevell_care_dr/features/profile/data/models/profile_model.dart';

import '../../../../core/failiar/main_failures.dart';

abstract class GetProfileRepository {
  Future<Either<MainFailure, ProfileModel>> getProfile();
}
