import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care_dr/features/login/domain/repositories/login_repository.dart';

import '../../data/models/login_model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;
  LoginBloc(this.loginRepository) : super(LoginState.initial()) {
    on<_Login>(
      (event, emit) async {
        emit(state.copyWith(
            isLoading: true, hasValidationData: false, isError: false));

        final response = await loginRepository.login(
          email: event.email,
          password: event.password,
        );

        final result = response.fold(
          (failure) => state.copyWith(
            isLoading: false,
            isError: true,
            message: "Something went wrong",
            hasValidationData: false,
          ),
          (success) => state.copyWith(
            isError: false,
            hasValidationData: true,
            isLoading: false,
            loginDetails: success,
            message: 'You are successfully Logined 🥳',
          ),
        );
        emit(result);
      },
    );
  }
}
