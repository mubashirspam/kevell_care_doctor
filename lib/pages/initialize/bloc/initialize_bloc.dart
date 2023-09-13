import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../../../settings/value/constant.dart';
import '../../../settings/value/secure_storage.dart';

part 'initialize_event.dart';
part 'initialize_state.dart';
part 'initialize_bloc.freezed.dart';

class InitializeBloc extends Bloc<InitializeEvent, InitializeState> {
  InitializeBloc() : super(InitializeState.initial()) {
    InternetConnectionCheckerPlus().onStatusChange.listen((status) {
      add(const _ContectionChanged(
        connectionstatus: true,
      ));
    });

    on<_ContectionChanged>((event, emit) async {
      emit(state.copyWith(
        connectionStatus: event.connectionstatus,
      ));
    });

    on<_Initial>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        
        ),
      );

      final token = await getTokenFromSS(secureStoreKey);
      

      if (token != null) {
        emit(state.copyWith(
          isLoading: false,
          isToken: true,
        ));
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            isToken: false,
          ),
        );
      }
    });
  }
}
