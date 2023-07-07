part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isStatusLoading,
    required bool hasStatusData,
    required bool hasWaitingPatientData,
    required bool isWaitingPatientLoading,
    required bool unauthorized,
    required bool hasData,
    required bool isError,
    HomeStatusModel? statusResult,
    HomeWaitingPatientModel? waitingPatientResult,
    required Option<Either<MainFailure, HomeWaitingPatientModel>>
        failureOrSuccessOption,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        isStatusLoading: false,
        isWaitingPatientLoading: false,
        unauthorized: false,
        isError: false,
        hasData: false,
        statusResult: null,
        waitingPatientResult: null,
        hasStatusData: false,
        hasWaitingPatientData: false,
        failureOrSuccessOption: none(),
      );
}
