part of 'checkup_bloc.dart';

@freezed
class CheckupEvent with _$CheckupEvent {
  const factory CheckupEvent.unlockKit() = _UnloackKIt;
  const factory CheckupEvent.lockKit() = _LoackKIt;
}
