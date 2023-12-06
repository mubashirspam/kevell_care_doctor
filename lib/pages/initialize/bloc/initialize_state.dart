part of 'initialize_bloc.dart';

@freezed
class InitializeState with _$InitializeState {
  const factory InitializeState({
    required bool isLoading,
    required bool isToken,
    required bool isVerified,
    required bool connectionStatus,
    // required HelpCenterModel? helpCenter,
  }) = _InitializeState;

  factory InitializeState.initial() => const InitializeState(
        isLoading: false,
        isToken: true,
        isVerified: false,
        connectionStatus: false,
        // helpCenter: null,
      );
}
