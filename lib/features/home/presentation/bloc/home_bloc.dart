import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care_dr/features/home/domain/repositories/get_home_status_repository.dart';
import 'package:kevell_care_dr/features/home/domain/repositories/get_home_waiting_patient_repository.dart';

import '../../../../core/failiar/main_failures.dart';
import '../../data/models/status_model.dart';
import '../../data/models/waiting_patient_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetHomeStatusRepository getHomeStatusRepository;
  final GetWaitingPatientRepository getWaitingPatientRepository;

  HomeBloc(this.getHomeStatusRepository, this.getWaitingPatientRepository)
      : super(HomeState.initial()) {
    on<_GetHomeStatus>((event, emit) async {
      if (state.hasStatusData) {
        return;
      }

      emit(
        state.copyWith(
          isStatusLoading: true,
          isError: false,
          unauthorized: false,
          hasStatusData: false,
        ),
      );

      final response = await getHomeStatusRepository.getHomeStatus();

      final result = response.fold(
        (failure) => state.copyWith(
          isStatusLoading: false,
          hasStatusData: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isStatusLoading: false,
          hasStatusData: true,
          statusResult: success,
        ),
      );
      emit(result);
    });

    on<_GetHomeWaitingPatient>((event, emit) async {

        if (state.hasWaitingPatientData) {
        return;
      }
      emit(
        state.copyWith(
          isWaitingPatientLoading: true,
          isError: false,
          unauthorized: false,
          hasWaitingPatientData: false,
        ),
      );

      final response =
          await getWaitingPatientRepository.getHomeWaitingPatient();

      response.fold(
          (failure) => {
                failure.maybeWhen(
                  clientFailure: () {
                    log('clientFailure');
                    return emit(state.copyWith(
                      unauthorized: false,
                      isWaitingPatientLoading: false,
                      isError: true,
                      failureOrSuccessOption: some(Left(failure)),
                    ));
                  },
                  unauthorized: () {
                    log('emit unauthorized');
                    return emit(state.copyWith(
                      isWaitingPatientLoading: false,
                      unauthorized: true,
                      isError: true,
                      failureOrSuccessOption: some(Left(failure)),
                    ));
                  },
                  serverFailure: () {
                    log('emit serverFailure');
                    return emit(state.copyWith(
                      isWaitingPatientLoading: false,
                      isError: true,
                      failureOrSuccessOption: some(Left(failure)),
                    ));
                  },
                  orElse: () {
                    log('emit orElse');
                    return emit(state.copyWith(
                      isWaitingPatientLoading: false,
                      isError: true,
                      failureOrSuccessOption: some(Left(failure)),
                    ));
                  },
                )
              }, (success) {
        emit(
          state.copyWith(
            isError: false,
            isWaitingPatientLoading: false,
            hasWaitingPatientData: true,
            waitingPatientResult: success,
            failureOrSuccessOption: some(Right(success)),
          ),
        );
      });
    });
  }
}
