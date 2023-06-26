part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isLoading,
    required bool isError,
    required bool hasValidationData,
    required LoginModel? loginDetails,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        isLoading: false,
        isError: false,
        hasValidationData: false,
        loginDetails: null,
      );
}
