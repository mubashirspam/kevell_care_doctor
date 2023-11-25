part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required bool isLoading,
    required String message,
    required bool isError,
    required bool hasData,
    required ChatProfileModel? result,
  }) = _ChatState;

  factory ChatState.initial() => const ChatState(
        isLoading: false,
        isError: false,
        hasData: false,
        result: null,
        message: "",
      );
}
