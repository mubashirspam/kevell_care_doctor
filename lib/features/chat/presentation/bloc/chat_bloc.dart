import 'dart:developer';

import 'package:dr_kevell/features/chat/data/model/chat_person_model.dart';
import 'package:dr_kevell/features/chat/domain/chat_isar_repo.dart';
import 'package:dr_kevell/features/chat/domain/repository/fetch_chat_profile_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final FetchChatProfileRepository fetchChatProfileRepository;

  ChatBloc(this.fetchChatProfileRepository) : super(ChatState.initial()) {
    on<_FetchChatProfile>((event, emit) async {
      // Added 'async' here

      if(state.hasData){
        return;

      }
      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
        ),
      );

      try {

        final localResponse = await ChatIsarRepo.instance.getChatProfile();
        if (localResponse != null) {
          log("local : $localResponse");
          emit(state.copyWith(
            result: localResponse,
            isLoading: false,
            hasData: true,
          ));
        }
      } catch (e) {
        log("local error : $e");
      }

      final response =
          await fetchChatProfileRepository.fetchChatProfile(id: event.id);

      response.fold((failure) {
        emit(
          state.copyWith(isError: true, isLoading: false, message: "Error"),
        );
      }, (success) {
        emit(
          state.copyWith(
            isError: false,
            hasData: true,
            isLoading: false,
            result: success,
          ),
        );
        try {
          final localResponse = ChatIsarRepo.instance.postChatProfile(success.result);

          log("local : $localResponse");
        } catch (e) {
          log("local error : $e");
        }
      });
    });
  }
}
