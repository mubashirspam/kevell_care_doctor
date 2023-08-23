import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/features/profile/domain/repositories/get_profile_repository.dart';
import 'package:dr_kevell/features/profile/domain/repositories/update_profile_repository.dart';

import '../../data/models/profile_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileRepository getprofileRepository;
  final UpdateProfileRepository updateProfileRepository;

  ProfileBloc(this.getprofileRepository, this.updateProfileRepository)
      : super(ProfileState.initial()) {
    on<_GetProfile>((event, emit) async {
      if (state.hasData) {
        return;
      }
      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
        ),
      );

      final response = await getprofileRepository.getProfile();

      final result = response.fold(
        (failure) => state.copyWith(
          isLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isLoading: false,
          hasData: true,
          result: success,
        ),
      );
      emit(result);
    });

         on<_PickDate>((event, emit) {
      emit(state.copyWith(
        date: event.date,
      ));
    });


    on<_UpdateProfile>((event, emit) async {
      emit(
        state.copyWith(
          isUpdateLoading: true,
          hasData: false,
          isError: false,
        ),
      );

      final response = await updateProfileRepository.updateProfile(
        profileData: event.profileData,
      );

      final result = response.fold(
        (failure) => state.copyWith(
          isUpdateLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
            isError: false,
            isUpdateLoading: false,
            result: success,
            hasData: true),
      );
      emit(result);
    });
  }
}
