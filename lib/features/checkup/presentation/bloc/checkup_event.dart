part of 'checkup_bloc.dart';

@freezed
class CheckupEvent with _$CheckupEvent {
  const factory CheckupEvent.unlockKit({
    required Map<String, dynamic> payload,
    required String topic,
  }) = _UnloackKIt;
  const factory CheckupEvent.lockKit({required String topic}) = _LoackKIt;
  const factory CheckupEvent.subscribe({required String topic}) = _Subscribe;
  const factory CheckupEvent.getdth({required Map<String, dynamic> payload}) =
      _Getdth;
  const factory CheckupEvent.gettemperature(
      {required String topic,required Map<String, dynamic> payload}) = _Gettemperature;
  const factory CheckupEvent.getspo2(
      {required String topic,
      required Map<String, dynamic> payload}) = _Getspo2;
  const factory CheckupEvent.getposition(
      {required String topic,
      required Map<String, dynamic> payload}) = _Getposition;
  const factory CheckupEvent.getbloodPresure(
      {required String topic,
      required Map<String, dynamic> payload}) = _GetbloodPresure;
  const factory CheckupEvent.getecg(
      {required String topic, required Map<String, dynamic> payload}) = _Getecg;
  const factory CheckupEvent.getemg(
      {required String topic, required Map<String, dynamic> payload}) = _Getemg;
  const factory CheckupEvent.getgsr(
      {required String topic, required Map<String, dynamic> payload}) = _Getgsr;
  const factory CheckupEvent.getbmi(
      {required String topic, required Map<String, dynamic> payload}) = _Getbmi;
  const factory CheckupEvent.getglucose(
      {required String topic,
      required Map<String, dynamic> payload}) = _Getglucose;
  const factory CheckupEvent.getstethoscope(
      {required String topic,
      required Map<String, dynamic> payload}) = _Getstethoscope;
  const factory CheckupEvent.getotoscope(
      {required String topic,
      required Map<String, dynamic> payload}) = _Getotoscope;
}
