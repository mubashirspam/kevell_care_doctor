import 'dart:developer';


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/create_schedule_model.dart';
import '../../data/models/delete_schedule_model.dart';
import '../../data/models/schedule_model.dart';
import '../../data/models/update_schedul_model.dart';
import '../../domain/entities/create_schedule.dart';
import '../../domain/entities/update_schedule.dart';
import '../../domain/repositories/delete_schdule_repository.dart';
import '../../domain/repositories/get_schedule_repository.dart';
import '../../domain/repositories/create_schedule_repository.dart';
import '../../domain/repositories/update_schedule_repository.dart';

part 'schedule_event.dart';
part 'schedule_state.dart';
part 'schedule_bloc.freezed.dart';

@injectable
class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final GetScheduleRepository getScheduleRepository;
  final CreateScheduleRepository createScheduleRepository;
  final DeleteScheduleRepository deleteScheduleRepository;
  final UpdateScheduleRepository updatedScheduleRepository;

  ScheduleBloc(
    this.getScheduleRepository,
    this.createScheduleRepository,
    this.deleteScheduleRepository,
    this.updatedScheduleRepository,
  ) : super(ScheduleState.initial()) {
    on<_GetSchedule>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          isDeleted: false,
          isCreated: false,
          isError: false,
          hasData: false,
        ),
      );

      final response = await getScheduleRepository.getSchedule();

      final result = response.fold(
        (failure) => state.copyWith(
          isLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isLoading: false,
          hasData: true,
          result: success,
        ),
      );
      emit(result);
    });

    on<_CreateSchedule>((event, emit) async {
      emit(
        state.copyWith(
          isCreateLoading: true,
          hasData: false,
          createResponse: null,
          isCreated: false,
          isError: false,
        ),
      );

      final response = await createScheduleRepository.createSchedule(
          schedulePayload: event.schedulePayload);

      final result = response.fold(
        (failure) => state.copyWith(
          isCreateLoading: false,
          isCreated: false,
          hasData: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isCreateLoading: false,
          isCreated: true,
          createResponse: success,
          hasData: false,
        ),
      );
      emit(result);
    });

    on<_UpdateSchedule>((event, emit) async {
      emit(
        state.copyWith(
          isUpdateLoading: true,
          hasData: false,
          createResponse: null,
          isUpdated: false,
          isError: false,
        ),
      );

      final response = await updatedScheduleRepository.updateSchedule(
          schedulePayload: event.schedulePayload);

      final result = response.fold(
        (failure) => state.copyWith(
          isUpdateLoading: false,
          isUpdated: false,
          hasData: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isUpdateLoading: false,
          isUpdated: true,
          updateResponse: success,
          hasData: false,
        ),
      );
      emit(result);
    });

    on<_DeleteSchedule>((event, emit) async {
      emit(
        state.copyWith(
          isDeleteLoading: true,
          isDeleted: false,
          deleteResponse: null,
          isError: false,
        ),
      );

      final response =
          await deleteScheduleRepository.deleteSchedule(id: event.id);

      log("deleted called ===============");

      final result = response.fold(
        (failure) => state.copyWith(
          isDeleteLoading: false,
          isDeleted: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isDeleteLoading: false,
          isDeleted: true,
          deleteResponse: success,
        ),
      );
      emit(result);
    });

    on<_Decrement>((event, emit) {
      if (state.numberOfPatient < 2) {
        final timeePatient =
            calculateTimeForEachPatient(state.startTime, state.endTime, 1);
        emit(state.copyWith(
          numberOfPatient: 1,
          isCreated: false,
          timeForSinglePatient: timeePatient,
        ));
      } else {
        final timeePatient = calculateTimeForEachPatient(
            state.startTime, state.endTime, state.numberOfPatient - 1);
        emit(state.copyWith(
          isCreated: false,
          numberOfPatient: state.numberOfPatient - 1,
          timeForSinglePatient: timeePatient,
        ));
      }
    });

    on<_Increment>((event, emit) {
      if (state.numberOfPatient > 9) {
        final timeePatient =
            calculateTimeForEachPatient(state.startTime, state.endTime, 10);

        emit(state.copyWith(
          numberOfPatient: 10,
          isCreated: false,
          timeForSinglePatient: timeePatient,
        ));
      } else {
        final timeePatient = calculateTimeForEachPatient(
          state.startTime,
          state.endTime,
          state.numberOfPatient + 1,
        );
        emit(state.copyWith(
          isCreated: false,
          numberOfPatient: state.numberOfPatient + 1,
          timeForSinglePatient: timeePatient,
        ));
      }
    });

    on<_PickDate>((event, emit) {
      emit(state.copyWith(
        startDate: event.startDate,
        endDate: event.endDate,
        isCreated: false,
      ));
    });

    on<_PickTime>((event, emit) {
      final timeePatient = calculateTimeForEachPatient(
          event.startTime, event.endTime, state.numberOfPatient);
      emit(state.copyWith(
        startTime: event.startTime,
        endTime: event.endTime,
        isCreated: false,
        timeForSinglePatient: timeePatient,
      ));
    });
  }

  int calculateTimeForEachPatient(
      DateTime startTime, DateTime endTime, int totalPatients) {
    Duration totalDuration = endTime.difference(startTime);
    int totalMinutes = totalDuration.inMinutes;
    int timeForEachPatient = totalMinutes ~/ totalPatients;
    // String formattedTime =
    //     '${timeForEachPatient ~/ 60}:${timeForEachPatient % 60}';

    return timeForEachPatient;
  }

  // List<TimeSlote> generateTimeSlots(
  //     DateTime currentDateTime, int timeForEachPatient, int totalPatients) {
  //   List<TimeSlote> timeSlots = [];

  //   for (int i = 1; i <= totalPatients; i++) {
  //     DateTime endOfTimeSlot =
  //         currentDateTime.add(Duration(minutes: timeForEachPatient));

  //     TimeSlote timeSlot = TimeSlote(
  //         status: false, fromTime: currentDateTime, toTime: endOfTimeSlot);

  //     timeSlots.add(timeSlot);
  //     currentDateTime = endOfTimeSlot;
  //   }

  //   return timeSlots;
  // }
}
