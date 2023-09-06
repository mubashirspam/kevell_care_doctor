part of 'schedule_bloc.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState({
    required bool isLoading,
    required bool isCreateLoading,
    required bool isUpdateLoading,
    required bool isDeleteLoading,
    required bool isDeleted,
    required bool isCreated,
    required bool isUpdated,
    required bool unauthorized,
    required bool hasData,
    required bool isError,
    required ScheduleModel? result,
    required CreateScheduleModel? createResponse,
    required DeleteScheduleModel? deleteResponse,
    required UpdateScheduleModel? updateResponse,
    required int numberOfPatient,
    required DateTime startDate,
    required DateTime endDate,
    required DateTime startTime,
    required DateTime endTime,
    required int timeForSinglePatient,
  }) = _ScheduleState;

  factory ScheduleState.initial() => ScheduleState(
        isLoading: false,
        isDeleted: false,
        isCreateLoading: false,
        isUpdateLoading: false,
        isUpdated: false,
        unauthorized: false,
        isError: false,
        hasData: false,
        isDeleteLoading: false,
        deleteResponse: null,
        updateResponse: null,
        result: null,
        isCreated: false,
        createResponse: null,
        numberOfPatient: 3,
        startDate: DateTime.now().add(const Duration(days: 1)),
        endDate: DateTime.now().add(const Duration(days: 5)),
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 10, 0),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 13, 0),
        timeForSinglePatient: 60,
      );
}
