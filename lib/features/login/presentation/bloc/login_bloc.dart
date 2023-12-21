import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:dr_kevell/features/login/domain/repositories/login_repository.dart';

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
          isLoading: true,
          hasValidationData: false,
          isError: false,
        ));

        final response = await loginRepository.login(
          email: event.email,
          password: event.password,
        );

        response.fold(
            (failure) => {
                  failure.maybeWhen(
                    clientFailure: (s) {
                      log('clientFailure');
                      return emit(state.copyWith(
                        isLoading: false,
                        message: "Client faliure",
                        isError: true,
                      ));
                    },
                    unauthorized: (String message) {
                      log('emit unauthorized');
                      return emit(state.copyWith(
                        isLoading: false,
                        message: message,
                        isError: true,
                      ));
                    },
                    serverFailure: (s) {
                      log('emit serverFailure');
                      return emit(state.copyWith(
                        isLoading: false,
                        message: "Server faliure",
                        isError: true,
                      ));
                    },
                    orElse: () {
                      log('emit orElse');
                      return emit(state.copyWith(
                        isLoading: false,
                        message: "Error",
                        isError: true,
                      ));
                    },
                  )
                }, (success) {
          emit(
            state.copyWith(
              isError: false,
              hasValidationData: true,
              isLoading: false,
              loginDetails: success,
              message: 'You are successfully Logined 🥳',
            ),
          );
        });

        
      },
    );
  }
}
