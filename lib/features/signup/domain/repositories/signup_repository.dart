import 'package:dartz/dartz.dart';

import '../../../../core/failiar/main_failures.dart';
import '../../data/models/signup_model.dart';

abstract class SignupRepository {
  Future<Either<MainFailure, SignupModel>> signup({
    required String email,
    required String phone,
    required String fullName,
  });
}
