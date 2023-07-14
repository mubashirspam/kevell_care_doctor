import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/features/history/domain/repositories/get_patient_history_list_repository.dart';

import '../../data/model/history_patient_list_model.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

@injectable
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final GetPatientHistoryListRepository getPatientHistoryListRepository;
  HistoryBloc(this.getPatientHistoryListRepository)
      : super(HistoryState.initial()) {
    on<_GePatientHistoryList>((event, emit) async {
      // if (state.hasPatientListData) {
      //   return;
      // }

      emit(
        state.copyWith(
          isPatientListLoading: true,
          isError: false,
          unauthorized: false,
          hasPatientListData: false,
        ),
      );

      final response =
          await getPatientHistoryListRepository.gePatientHistoryList(
        fromDate: event.fromDate,
        toDate: event.toDate,
      );

      response.fold(
          (failure) => {
                failure.maybeWhen(
                  clientFailure: () {
                    log('clientFailure');
                    return emit(state.copyWith(
                      unauthorized: false,
                      isPatientListLoading: false,
                      isError: true,
                    ));
                  },
                  unauthorized: (String message) {
                    log('emit unauthorized');
                    return emit(state.copyWith(
                      isPatientListLoading: false,
                      unauthorized: true,
                      isError: true,
                    ));
                  },
                  serverFailure: () {
                    log('emit serverFailure');
                    return emit(state.copyWith(
                      isPatientListLoading: false,
                      isError: true,
                      unauthorized: false,
                    ));
                  },
                  orElse: () {
                    log('emit orElse');
                    return emit(state.copyWith(
                      isPatientListLoading: false,
                      isError: true,
                      unauthorized: false,
                    ));
                  },
                )
              }, (success) {
        emit(
          state.copyWith(
            isError: false,
            isPatientListLoading: false,
            unauthorized: false,
            patientListResult: success,
            hasPatientListData: true,
          ),
        );
      });
    });
  }
}
