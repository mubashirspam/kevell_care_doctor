part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.signup({
    required SingupPayload payload,
  
  }) = _Signup;
}
