part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.gePatientHistoryList({
    required String fromDate,
    required String toDate,
  }) = _GePatientHistoryList;
}
