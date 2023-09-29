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

  const factory PrecriptionEvent.selectTimeOfTheDay({
    required List<DataObjec> data,
  }) = _SelectTimeOfTheDay;

  const factory PrecriptionEvent.selectTobetaken({
    required List<DataObjec> data,
  }) = _SelectTobetaken;

  const factory PrecriptionEvent.genaratePdf({
    required List<PrescriptionPdfModel> data,
  }) = _GeneratePdf;

  const factory PrecriptionEvent.deletePrescription({
    required int pno,
    required int appoinmentId,
  }) = _DeletePrescription;
}
