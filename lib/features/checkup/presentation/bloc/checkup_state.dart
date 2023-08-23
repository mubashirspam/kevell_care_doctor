part of 'checkup_bloc.dart';

@freezed
class CheckupState with _$CheckupState {
  const factory CheckupState({
    required bool isLoading,
    required bool isConnected,
    required bool isUnloacked,
    required bool isSucribed,
    required bool error,
    required bool dth,
    required bool temperature,
    required bool spo2,
    required bool position,
    required bool bloodPresure,
    required bool ecg,
    required bool emg,
    required bool gsr,
    required bool bmi,
    required bool glucose,
    required bool stethoscope,
    required bool otoscope,
    required String message,
    required bool hasData,
    required EndAppoinmentModel? endAppoinmentResult,
  }) = _CheckupState;

  factory CheckupState.initial() => const CheckupState(
        isLoading: false,
        isConnected: false,
        isSucribed: false,
        error: false,
        message: "",
        isUnloacked: false,
        dth: false,
        temperature: false,
        spo2: false,
        position: false,
        bloodPresure: false,
        ecg: false,
        emg: false,
        gsr: false,
        bmi: false,
        glucose: false,
        stethoscope: false,
        otoscope: false,
        hasData: false,
        endAppoinmentResult: null,
      );
}
