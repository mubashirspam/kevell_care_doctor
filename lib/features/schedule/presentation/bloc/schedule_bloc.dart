import 'package:dr_kevell/features/schedule/data/models/schedule_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/get_schedule_repository.dart';
import '../../domain/repositories/update_profile_repository.dart';

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
          hasData: false,
          isError: false,
        ),
      );

      final response = await createScheduleRepository.createSchedule(
        fromDate: event.fromDate,
        fromTime: event.fromTime,
        numberOfPatient: event.numberOfPatient,
        toDate: event.toDate,
        toTime: event.toTime,
      );

      final result = response.fold(
        (failure) => state.copyWith(
          isCreateLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
            isError: false,
            isCreateLoading: false,
            result: success,
            hasData: true),
      );
      emit(result);
    });
  }
}
