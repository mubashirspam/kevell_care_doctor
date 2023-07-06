import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care_dr/features/profile/domain/repositories/get_profile_repository.dart';


import '../../data/models/profile_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileRepository getprofileRepository;

  ProfileBloc(this.getprofileRepository, )
      : super(ProfileState.initial()) {
    on<_GetProfile>((event, emit) async {
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
          result: success,
        ),
      );
      emit(result);
    });

    on<_UpdateProfile>((event, emit) async {
      emit(
        state.copyWith(
          isUpdateLoading: true,
          isError: false,
        ),
      );

      final response = await getprofileRepository.getProfile();

      final result = response.fold(
        (failure) => state.copyWith(
          isUpdateLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isUpdateLoading: false,
          result: success,
        ),
      );
      emit(result);
    });
  }
}
