part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.getProfile() = _GetSchedule;
  const factory ScheduleEvent.updateProfile({
    required String fromDate,
    required String toDate,
    required String fromTime,
    required String toTime,
    required String numberOfPatient,
  }) = _CreateSchedule;
}
