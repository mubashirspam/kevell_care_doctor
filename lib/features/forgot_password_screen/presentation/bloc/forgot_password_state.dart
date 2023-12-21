part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required bool isLoading,
    required String message,
    required bool isOtpSendError,
    required bool isPasswordError,
    required bool hasOtpSended,
    required bool haspasswordChanged,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() => const ForgotPasswordState(
        isLoading: false,
        isOtpSendError: false,
        hasOtpSended: false,
        haspasswordChanged: false,
        isPasswordError:false,
        message: "",
      );
}
