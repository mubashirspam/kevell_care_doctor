import 'package:dr_kevell/features/chat/data/model/chat_person_model.dart';
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
      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
          hasData: false,
        ),
      );

      final response =
          await fetchChatProfileRepository.fetchChatProfile(id: event.id);

      final result = response.fold(
        (failure) =>
            state.copyWith(isError: true, isLoading: false, message: "Error"),
        (success) => state.copyWith(
          isError: false,
          hasData: true,
          isLoading: false,
          result: success,
        ),
      );
      emit(result);
    });
  }
}
