part of 'precription_bloc.dart';

@freezed
class PrecriptionState with _$PrecriptionState {
  const factory PrecriptionState({
    required bool isGetLoading,
    required bool isGetSettingsLoading,
    required bool isUpdateLoading,
    required bool isCreateLoading,
    required bool updated,
    required bool created,
    required bool unauthorized,
    required bool isError,
    required bool hasData,
    required bool hasSettingsData,
    required String? message,
    required List<DataObjec>? tobeTakeData,
    required List<DataObjec>? timeoftheDayData,
    PrescriptionModel? prescriptionResult,
    PrescriptionSettingsModel? prescriptionSettingsResult,
    required bool isPdfLoading,
        required bool pdfCreated,
    required pw.Document? pdf,
    required bool pdfError,
    required String pdfErrorMessage,
    String? pdfPath,
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
        updated: false,
        created: false,
        tobeTakeData: null,
        timeoftheDayData: null,
        message: null,
        isPdfLoading: false,
        pdf: null,
        pdfCreated:false,
        pdfError: false,
        pdfErrorMessage: "",
        pdfPath: "",
      );
}
