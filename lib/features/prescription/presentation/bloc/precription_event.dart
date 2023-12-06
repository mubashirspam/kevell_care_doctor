part of 'precription_bloc.dart';

@freezed
class PrecriptionEvent with _$PrecriptionEvent {
  const factory PrecriptionEvent.getPrescriptionList(
      {required int appointmentId}) = _GetPrescriptionList;
  const factory PrecriptionEvent.getPrescriptionSettings() =
      _GetPrescriptionSettings;
  const factory PrecriptionEvent.createPrescription({
    required CreatePrescriptionPayload payload,
  }) = _CreatePrescription;
  const factory PrecriptionEvent.updatePrescription({
    required Map<String, dynamic> payload,
  }) = _UpdatePrescription;

  const factory PrecriptionEvent.editOrCreatePrescription({
    required Prescription prescriptions,
    required bool isEditing,
    int? index,
  }) = _EditOrCreatePrescription;

  const factory PrecriptionEvent.genaratePdf({
    required List<ReportPrescription> data,
    required PdfActions action,
  }) = _GeneratePdf;

  const factory PrecriptionEvent.deletePrescription({
   
    required int index
  }) = _DeletePrescription;
}

