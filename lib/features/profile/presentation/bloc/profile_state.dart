part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isLoading,
    required bool isUpdateLoading,
    required bool unauthorized,
    required bool hasData,
    required bool isError,
    required ProfileModel? result,
    required DateTime date,
  }) = _ProfileState;

  factory ProfileState.initial() =>  ProfileState(
      isLoading: false,
      isUpdateLoading: false,
      unauthorized: false,
      isError: false,
      hasData: false,
      result: null,
      date: DateTime.now());
}
