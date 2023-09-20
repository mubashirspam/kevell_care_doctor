part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState({
    required bool isPatientListLoading,
    required bool hasPatientListData,
    required bool unauthorized,
    required bool isError,
    required DateTime startDate,
    required DateTime endDate,
    required String message,
    required bool noDatafound,
    required HistoryType historyType,
    HistoryPatientListModel? patientListResult,
  }) = _HistoryState;

  factory HistoryState.initial() => HistoryState(
        isPatientListLoading: false,
        unauthorized: false,
        isError: false,
        patientListResult: null,
        noDatafound: false,
        message: "",
        historyType: HistoryType.other,
        hasPatientListData: false,
        startDate: DateTime.now().subtract(const Duration(days: 7)),
        endDate: DateTime.now(),
      );
}
