part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState({
    required bool isPatientListLoading,
    required bool hasPatientListData,
    required bool unauthorized,
    required bool isError,
    HistoryPatientListModel? patientListResult,
  }) = _HistoryState;

  factory HistoryState.initial() => const HistoryState(
        isPatientListLoading: false,
        unauthorized: false,
        isError: false,
        patientListResult: null,
        hasPatientListData: false,
      );
}
