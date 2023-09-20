part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getHomeStatus() = _GetHomeStatus;
  const factory HomeEvent.getHomeWaitingPatient() = _GetHomeWaitingPatient;
}
