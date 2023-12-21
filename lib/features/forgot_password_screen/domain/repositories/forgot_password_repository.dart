import 'package:dartz/dartz.dart';
import '../../../../core/failiar/main_failures.dart';

abstract class ForgotPasswordRepository {
  Future<Either<MainFailure, bool>> sendOTP({
    required String email,
  });

  Future<Either<MainFailure, bool>> setNewPassword({
    required String email,
    required String otp,
    required String passwrod,
  });
}
