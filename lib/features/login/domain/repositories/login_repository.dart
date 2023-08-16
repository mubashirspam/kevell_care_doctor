import 'package:dartz/dartz.dart';
import 'package:kevell_care_dr/features/login/data/models/login_model.dart';

import '../../../../core/failiar/main_failures.dart';


abstract class LoginRepository {
  Future<Either<MainFailure, LoginModel>> login({
    required String email,
    required String password,
  
  });
}
