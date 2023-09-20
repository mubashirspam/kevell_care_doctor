part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.gePatientHistoryList({
    required String fromDate,
    required String toDate,
  }) = _GePatientHistoryList;

   const factory HistoryEvent.pickDate({
    required DateTime startDate,
    required DateTime endDate,
    required HistoryType historyType, 
  }) = _PickDate;
}

enum HistoryType {
  all,
  today,
  lastWeek,
  currentMonth,
  other,
}