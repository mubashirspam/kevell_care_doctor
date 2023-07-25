part of 'precription_bloc.dart';

@freezed
class PrecriptionEvent with _$PrecriptionEvent {
  const factory PrecriptionEvent.getPrescriptionList(
      {required int appointmentId}) = _GetPrescriptionList;
  const factory PrecriptionEvent.getPrescriptionSettings() =
      _GetPrescriptionSettings;
  const factory PrecriptionEvent.createPrescription({
    required PrescriptionElement prescriptionElement,
  }) = _CreatePrescription;
  const factory PrecriptionEvent.updatePrescription({
    required PrescriptionElement prescriptionElement,
  }) = _UpdatePrescription;
}
