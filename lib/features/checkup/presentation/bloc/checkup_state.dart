part of 'checkup_bloc.dart';

@freezed
class CheckupState with _$CheckupState {
  const factory CheckupState({
    required bool isLoading,
    required bool isConnected,
    required bool isServerConnected,
    required bool isSucribed,
    required bool error,
    required String message,
  }) = _CheckupState;

  factory CheckupState.initial() => const CheckupState(
        isLoading: true,
        isConnected: false,
        isSucribed: false,
        error: false,
        message: "",
        isServerConnected: false,
      );
}
