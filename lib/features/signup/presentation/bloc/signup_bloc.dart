import 'dart:developer';

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
          isLoading: true,
          hasValidationData: false,
          isError: false,
        ));

        final response = await signupRepository.signup(
          phone: event.phone,
          email: event.email,
          fullName: event.fullName,
          password: event.password,
        );

        response.fold(
            (failure) => {
                  failure.maybeWhen(
                    clientFailure: () {
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
                    serverFailure: () {
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
              singnupDetails: success,
              message: 'You are successfully Registerd 🥳',
            ),
          );
        });
      },
    );
  }
}
