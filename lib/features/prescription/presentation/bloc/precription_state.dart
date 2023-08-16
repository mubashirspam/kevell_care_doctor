part of 'precription_bloc.dart';

@freezed
class PrecriptionState with _$PrecriptionState {
  const factory PrecriptionState({
    required bool isGetLoading,
    required bool isGetSettingsLoading,
    required bool isUpdateLoading,
    required bool isCreateLoading,
    required bool unauthorized,
    required bool isError,
    required bool hasData,
    required bool hasSettingsData,
    required String? message,
    required List<DataObjec>? tobeTakeData,
     required List<DataObjec>? timeoftheDayData,
    PrescriptionModel? prescriptionResult,
    PrescriptionSettingsModel? prescriptionSettingsResult,
  }) = _PrecriptionState;

  factory PrecriptionState.initial() => const PrecriptionState(
        isCreateLoading: false,
        isGetLoading: false,
        unauthorized: false,
        isError: false,
        hasData: false,
        isGetSettingsLoading: false,
        prescriptionResult: null,
        prescriptionSettingsResult: null,
        isUpdateLoading: false,
        hasSettingsData: false,
        tobeTakeData: null,
          timeoftheDayData: null,
        message: null,
      );
}
