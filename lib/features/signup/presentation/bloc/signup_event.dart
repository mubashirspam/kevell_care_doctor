part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.signup({
    required String fullName,
    required String phone,
    required String email,
    required String password,
  }) = _Signup;
}
