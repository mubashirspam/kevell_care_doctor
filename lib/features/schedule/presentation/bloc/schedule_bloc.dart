import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/create_schedule_model.dart';
import '../../data/models/schedule_model.dart';
import '../../domain/entities/create_schedule.dart';
import '../../domain/repositories/get_schedule_repository.dart';
import '../../domain/repositories/create_schedule_repository.dart';

part 'schedule_event.dart';
part 'schedule_state.dart';
part 'schedule_bloc.freezed.dart';

@injectable
class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final GetScheduleRepository getScheduleRepository;
  final CreateScheduleRepository createScheduleRepository;

  ScheduleBloc(this.getScheduleRepository, this.createScheduleRepository)
      : super(ScheduleState.initial()) {
    on<_GetSchedule>((event, emit) async {
      if (state.hasData) {
        return;
      }
      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
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
          createResponse: null,
          isError: false,
        ),
      );

      final response = await createScheduleRepository.createSchedule(
          schedulePayload: event.schedulePayload);

      final result = response.fold(
        (failure) => state.copyWith(
          isCreateLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
            isError: false,
            isCreateLoading: false,
            createResponse: success,
            hasData: true),
      );
      emit(result);
    });

    on<_Decrement>((event, emit) {
      if (state.numberOfPatient < 2) {
        final timeePatient =
            calculateTimeForEachPatient(state.startTime, state.endTime, 1);
        emit(state.copyWith(
          numberOfPatient: 1,
          timeForSinglePatient: timeePatient,
        ));
      } else {
        final timeePatient = calculateTimeForEachPatient(
            state.startTime, state.endTime, state.numberOfPatient - 1);
        emit(state.copyWith(
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
          timeForSinglePatient: timeePatient,
        ));
      } else {
        final timeePatient = calculateTimeForEachPatient(
            state.startTime, state.endTime, state.numberOfPatient + 1);
        emit(state.copyWith(
          numberOfPatient: state.numberOfPatient + 1,
          timeForSinglePatient: timeePatient,
        ));
      }
    });

    on<_PickDate>((event, emit) {
      emit(state.copyWith(
        startDate: event.startDate,
        endDate: event.endDate,
      ));
    });

    on<_PickTime>((event, emit) {
      final timeePatient = calculateTimeForEachPatient(
          event.startTime, event.endTime, state.numberOfPatient);
      emit(state.copyWith(
        startTime: event.startTime,
        endTime: event.endTime,
        timeForSinglePatient: timeePatient,
      ));
    });
  }

  int calculateTimeForEachPatient(
      DateTime startTime, DateTime endTime, int totalPatients) {
    Duration totalDuration = endTime.difference(startTime);
    int totalMinutes = totalDuration.inMinutes;
    int timeForEachPatient = totalMinutes ~/ totalPatients;
    String formattedTime =
        '${timeForEachPatient ~/ 60}:${timeForEachPatient % 60}';

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
