import 'dart:developer';

import 'package:dr_kevell/features/checkup/domain/repository/unlock_mqtt_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../data/model/MQTTAppState.dart';
import '../../data/repository/MQTTManager.dart';
import '../../domain/repository/subscribe_mqtt_repository.dart';

part 'checkup_event.dart';
part 'checkup_state.dart';
part 'checkup_bloc.freezed.dart';

@injectable
class CheckupBloc extends Bloc<CheckupEvent, CheckupState> {
  final MQTTManager _manager = MQTTManager();

  final SubscribeRepository subscribeRepository;
  final UnloackRepository unloackRepository;
  CheckupBloc(this.subscribeRepository, this.unloackRepository)
      : super(CheckupState.initial()) {
    on<_Subscribe>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          message: "Connecting...",
        ),
      );

      _manager.initializeMQTTClient();

      await _manager.connect();

      if (MQTTAppState().getAppConnectionState ==
          MQTTAppConnectionState.connectedSubscribed) {
        _manager.unSubscribeFromCurrentTopic();

        emit(
          state.copyWith(
            error: false,
            isLoading: false,
            isConnected: false,
            isSucribed: false,
          ),
        );
      } else {
        _manager.subScribeTo(event.topic);

        emit(
          state.copyWith(
            error: false,
            isLoading: false,
            isConnected: true,
            isSucribed: true,
          ),
        );
      }
    });

    on<_UnloackKIt>((event, emit) async {
      emit(
        state.copyWith(
          message: "Connecting...",
        ),
      );

      if (state.isSucribed) {
        _manager.publishMy(event.payload, event.topic);
        emit(
          state.copyWith(
            message: "unlocked",
            isUnloacked: true,
          ),
        );
      } else {
        emit(
          state.copyWith(
            message: "locked",
            isUnloacked: false,
          ),
        );
      }
    });

    on<_Gettemperature>((event, emit) async {
      _manager.publishMy(event.payload, event.topic);

      log(_manager.onStream().toString());

      emit(
        state.copyWith(
          message: "unlocked",
          isUnloacked: true,
        ),
      );
    });
  }
}
