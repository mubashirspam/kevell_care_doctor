part of 'initialize_bloc.dart';



@freezed
class InitializeEvent with _$InitializeEvent {
  const factory InitializeEvent.initial() = _Initial;
  const factory InitializeEvent.contectionChanged({
    required bool connectionstatus,
  }) = _ContectionChanged;

  const factory InitializeEvent.connectionCheck() = _ConnectionCheck;
}
