import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/signup_model.dart';
import '../../domain/repositories/signup_repository.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final SignupRepository signupRepository;
  SignupBloc(this.signupRepository) : super(SignupState.initial()) {
    on<_Signup>(
      (event, emit) async {
        emit(state.copyWith(
            isLoading: true, hasValidationData: false, isError: false));

        final response = await signupRepository.signup(
          phone: event.phone,
          email: event.email,
          fullName: event.fullName,
          password: event.password,
        );

        final result = response.fold(
          (failure) => state.copyWith(
              isLoading: false, isError: true, hasValidationData: false),
          (success) => state.copyWith(
            isError: false,
            hasValidationData: true,
            isLoading: false,
            singnupDetails: success,
          ),
        );
        emit(result);
      },
    );
  }
}
