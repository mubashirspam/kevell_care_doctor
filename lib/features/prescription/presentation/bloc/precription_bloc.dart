import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care_dr/features/prescription/data/model/prescription_list_model.dart';
import 'package:kevell_care_dr/features/prescription/data/model/prescription_settings_model.dart';
import 'package:kevell_care_dr/features/prescription/domain/repositories/create_prescription_repository.dart';
import 'package:kevell_care_dr/features/prescription/domain/repositories/get_prescription_list_repository.dart';
import 'package:kevell_care_dr/features/prescription/domain/repositories/get_prescription_settings_repository.dart';
import 'package:kevell_care_dr/features/prescription/domain/repositories/update_prescription_repository.dart';

part 'precription_event.dart';
part 'precription_state.dart';
part 'precription_bloc.freezed.dart';

@injectable
class PrecriptionBloc extends Bloc<PrecriptionEvent, PrecriptionState> {
  final GetPrescriptionListRepository getPrescriptionListRepository;
  final GetPrescriptionSettingsRepository getPrescriptionSettingsRepository;
  final CreatePrescriptionListRepository createPrescriptionListRepository;
  final UpdatePrescriptionListRepository updatePrescriptionListRepository;

  PrecriptionBloc(
    this.getPrescriptionListRepository,
    this.getPrescriptionSettingsRepository,
    this.createPrescriptionListRepository,
    this.updatePrescriptionListRepository,
  ) : super(PrecriptionState.initial()) {
    on<_GetPrescriptionList>((event, emit) async {
      if (state.hasData) {
        return;
      }

      emit(
        state.copyWith(
          isGetLoading: true,
          isError: false,
          unauthorized: false,
          hasData: false,
        ),
      );

      final response = await getPrescriptionListRepository.getPrescriptionList(
          appointmentId: event.appointmentId);

      response.fold(
          (failure) => {
                failure.maybeWhen(
                  clientFailure: () {
                    log('clientFailure');
                    return emit(state.copyWith(
                      unauthorized: false,
                      isGetLoading: false,
                      isError: true,
                    ));
                  },
                  unauthorized: (String message) {
                    log('emit unauthorized');
                    return emit(state.copyWith(
                      unauthorized: true,
                      isGetLoading: false,
                      isError: false,
                    ));
                  },
                  serverFailure: () {
                    log('emit serverFailure');
                    return emit(state.copyWith(
                      unauthorized: false,
                      isGetLoading: false,
                      isError: true,
                    ));
                  },
                  orElse: () {
                    log('emit orElse');
                    return emit(state.copyWith(
                      unauthorized: false,
                      isGetLoading: false,
                      isError: true,
                    ));
                  },
                )
              }, (success) {
        emit(
          state.copyWith(
            isError: false,
            unauthorized: false,
            isGetLoading: false,
            hasData: true,
            prescriptionResult: success,
          ),
        );
      });
    });

    on<_GetPrescriptionSettings>((event, emit) async {
      if (state.hasSettingsData) {
        return;
      }

      emit(
        state.copyWith(
          isGetSettingsLoading: true,
          isError: false,
          unauthorized: false,
          hasSettingsData: false,
        ),
      );

      final response = await getPrescriptionSettingsRepository.getPrescriptionSettings();

      final result = response.fold(
        (failure) => state.copyWith(
          isGetSettingsLoading: false,
          hasSettingsData: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isGetSettingsLoading: false,
          hasSettingsData: true,
          prescriptionSettingsResult: success,
        ),
      );
      emit(result);
    });

    on<_UpdatePrescription>((event, emit) async {
      if (state.hasSettingsData) {
        return;
      }

      emit(
        state.copyWith(
          isUpdateLoading: true,
          isError: false,
          unauthorized: false,
          hasData: false,
        ),
      );

      final response = await updatePrescriptionListRepository.updatePrescriptionList(prescriptionModel: event.prescriptionModel);

      final result = response.fold(
        (failure) => state.copyWith(
          isUpdateLoading: false,
          hasData: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isUpdateLoading: false,
          hasData: true,
          prescriptionResult: success,
        ),
      );
      emit(result);
    });

    on<_CreatePrescription>((event, emit) async {
      if (state.hasSettingsData) {
        return;
      }

      emit(
        state.copyWith(
          isCreateLoading: true,
          isError: false,
          unauthorized: false,
          hasData: false,
        ),
      );

      final response = await createPrescriptionListRepository.createPrescriptionList(prescriptionModel: event.prescriptionModel);

      final result = response.fold(
        (failure) => state.copyWith(
          isCreateLoading: false,
          hasData: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isCreateLoading: false,
          hasData: true,
          prescriptionResult: success,
        ),
      );
      emit(result);
    });
  }
}
