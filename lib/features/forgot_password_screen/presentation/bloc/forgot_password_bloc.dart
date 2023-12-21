import 'package:dr_kevell/features/forgot_password_screen/domain/repositories/forgot_password_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

@injectable
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final ForgotPasswordRepository forgotPasswordRepository;
  ForgotPasswordBloc(this.forgotPasswordRepository)
      : super(ForgotPasswordState.initial()) {
    on<_SendOTP>(
      (event, emit) async {
        emit(state.copyWith(
          isLoading: true,
          hasOtpSended: false,
          isOtpSendError: false,
          haspasswordChanged:false,
        ));

        final response = await forgotPasswordRepository.sendOTP(
          email: event.email,
        );

        final result = response.fold(
          (failure) => state.copyWith(
            isLoading: false,
            isOtpSendError: true,
          ),
          (success) => state.copyWith(
            isLoading: false,
            hasOtpSended: true,
          ),
        );
        emit(result);
      },
    );

     on<_SetNewPassword>(
      (event, emit) async {
        emit(state.copyWith(
          isLoading: true,
          haspasswordChanged: false,
          isPasswordError: false,
        ));

        final response = await forgotPasswordRepository.sendOTP(
          email: event.email,
        );

        final result = response.fold(
          (failure) => state.copyWith(
            isLoading: false,
            isPasswordError: true,
          ),
          (success) => state.copyWith(
            isLoading: false,
            haspasswordChanged: true,
          ),
        );
        emit(result);
      },
    );
  }
}
