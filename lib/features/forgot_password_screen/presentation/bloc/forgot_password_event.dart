part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.sendOTP({
    required String email,
  }) = _SendOTP;

 

  const factory ForgotPasswordEvent.setNewPassword({
    required String email,
    required String otp,
    required String passwrod,
    
  }) = _SetNewPassword;
}

