part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.getSchedule() = _GetSchedule;
  const factory ScheduleEvent.createSchedule({
  required SchedulePayload schedulePayload
  }) = _CreateSchedule;

  const factory ScheduleEvent.increment() = _Increment;
  const factory ScheduleEvent.decrement() = _Decrement;

  const factory ScheduleEvent.pickDate({
    required DateTime startDate,
    required DateTime endDate,
  }) = _PickDate;

  const factory ScheduleEvent.pickTime({
    required DateTime startTime,
    required DateTime endTime,
  }) = _PickTime;
}
