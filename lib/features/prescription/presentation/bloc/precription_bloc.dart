import 'dart:developer';
import 'dart:io';

import 'package:dr_kevell/features/report/data/model/report_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/features/prescription/data/model/prescription_settings_model.dart';
import 'package:dr_kevell/features/prescription/domain/repositories/create_prescription_repository.dart';
import 'package:dr_kevell/features/prescription/domain/repositories/get_prescription_list_repository.dart';
import 'package:dr_kevell/features/prescription/domain/repositories/get_prescription_settings_repository.dart';
import 'package:dr_kevell/features/prescription/domain/repositories/update_prescription_repository.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import '../../../../core/helper/enums.dart';
import '../../data/model/prescription_model.dart';
import '../../data/model/prescription_pdf_model.dart';
import '../../data/repository/genarate_prescription_pdf_impliment.dart';
import '../../domain/entities/create_prescription_payload.dart';

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
      emit(
        state.copyWith(
          isGetLoading: true,
          created: false,
          updated: false,
          isError: false,
          unauthorized: false,
          hasData: false,
          pdfCreated: false,
        ),
      );

      final response = await getPrescriptionListRepository.getPrescriptionList(
          appointmentId: event.appointmentId);

      // final result = PrescriptionModel.fromJson(dummyJson);

      // if (result.prescription != null) {
      //   prescriptionList = result.prescription!;
      // }

      // emit(
      //   state.copyWith(
      //     isError: false,
      //     unauthorized: false,
      //     isGetLoading: false,
      //     hasData: true,
      //     prescriptions: prescriptionList,
      //     prescriptionResult: result,
      //   ),
      // );

      response.fold(
          (failure) => {
                failure.maybeWhen(
                  clientFailure: (m) {
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
                  serverFailure: (m) {
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

      final response =
          await getPrescriptionSettingsRepository.getPrescriptionSettings();

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

    on<_EditOrCreatePrescription>((event, emit) async {
      emit(state.copyWith(
        isCreateLoading: true,
        isCreateHasdata: false,
        created: false,
      ));
      if (event.isEditing) {
        CreatePrescriptionPayload prescription =
            state.createPrescriptionPayload!;
        prescription.updatePrescription(event.index!, event.prescriptions);

        emit(
          state.copyWith(
            createPrescriptionPayload: prescription,
            isCreateLoading: false,
            isCreateHasdata: true,
          ),
        );
      } else {
        CreatePrescriptionPayload prescription =
            state.createPrescriptionPayload ?? CreatePrescriptionPayload();
        prescription.addPrescription(event.prescriptions);

        emit(
          state.copyWith(
            isCreateHasdata: true,
            createPrescriptionPayload: prescription,
            isCreateLoading: false,
          ),
        );
      }
    });

    on<_DeletePrescription>((event, emit) async {
      emit(
        state.copyWith(isDeleted: false, isDeleteLoading: true),
      );

      CreatePrescriptionPayload prescription = state.createPrescriptionPayload!;
      prescription.removePrescription(event.index);
      await Future.delayed(const Duration(milliseconds: 300));
      emit(
        state.copyWith(
          isDeleted: true,
          deletedIndex: event.index,
          isDeleteLoading: false,
          createPrescriptionPayload: prescription,
        ),
      );
    });

    on<_UpdatePrescription>((event, emit) async {
      emit(
        state.copyWith(
          isUpdateLoading: true,
          isError: false,
          unauthorized: false,
          hasData: false,
        ),
      );

      final response = await updatePrescriptionListRepository
          .updatePrescriptionList(payload: event.payload);

      final result = response.fold(
        (failure) => state.copyWith(
          isUpdateLoading: false,
          hasData: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isUpdateLoading: false,
          updated: true,
          hasData: false,
          prescriptionResult: success,
        ),
      );
      emit(result);
    });

    on<_CreatePrescription>((event, emit) async {
      emit(
        state.copyWith(
          isGetLoading: true,
          isError: false,
          created: false,
          unauthorized: false,
          hasData: false,
        ),
      );

      final response = await createPrescriptionListRepository
          .createPrescriptionList(payload: event.payload);

      final result = response.fold(
        (failure) => state.copyWith(
          isGetLoading: false,
          hasData: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isGetLoading: false,
          created: true,
          hasData: false,
          // prescriptionResult: success,
        ),
      );
      emit(result);
    });

    on<_GeneratePdf>(
      (event, emit) async {
        emit(
          state.copyWith(
            action: null,
            isPdfLoading: true,
            pdfCreated: false,
            pdfError: false,
          ),
        );

        try {
          final pdf = await generatePDF(event.data);
          final bytes = await pdf.save();
          final tempDir = await getTemporaryDirectory();
          final file = File('${tempDir.path}/prescription.pdf');
          await file.writeAsBytes(bytes);
          emit(
            state.copyWith(
              action: event.action,
              pdfError: false,
              isPdfLoading: false,
              pdfCreated: true,
              pdf: pdf,
              pdfPath: file.path,
            ),
          );
        } catch (e) {
          log("error $e");
          emit(state.copyWith(
            pdfError: true,
            pdfCreated: false,
            pdfErrorMessage: e.toString(),
            isPdfLoading: false,

          ));
        }
      },
    );
  }

  Future<pw.Document> generatePDF(List<ReportPrescription> data) async {
    GeneratePrescriptionPdfRepoImpliment pdfClass =
        GeneratePrescriptionPdfRepoImpliment();
    final pdf = pdfClass.generatePDF(data);

    return pdf;
  }
}
