part of 'schedule_bloc.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState({
    required bool isLoading,
    required bool isCreateLoading,
    required bool unauthorized,
    required bool hasData,
    required bool isError,
    required ScheduleModel? result,
  }) = _ScheduleState;

  factory ScheduleState.initial() => const ScheduleState(
        isLoading: false,
        isCreateLoading: false,
        unauthorized: false,
        isError: false,
        hasData: false,
        result: null,
      );
}
