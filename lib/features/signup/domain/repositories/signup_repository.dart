import 'package:dartz/dartz.dart';

import '../../../../core/failiar/main_failures.dart';
import '../../data/models/signup_model.dart';
import '../entities/signup_payload.dart';

abstract class SignupRepository {
  Future<Either<MainFailure, SignupModel>> signup({
    required SingupPayload singupPayload,
   
  });
}
