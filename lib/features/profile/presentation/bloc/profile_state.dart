part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isLoading,
    required bool isUpdateLoading,
    required bool isError,
    required ProfileModel? result,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState(
        isLoading: false,
        isUpdateLoading: false,
        isError: false,
        result: null,
      );
}
