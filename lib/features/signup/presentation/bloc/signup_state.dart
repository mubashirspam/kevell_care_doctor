part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required bool isLoading,
    required bool isError,
    required bool hasValidationData,
    required SignupModel? singnupDetails,
  }) = _SignupState;

  factory SignupState.initial() => const SignupState(
        isLoading: false,
        isError: false,
        hasValidationData: false,
        singnupDetails: null,
      );
}
