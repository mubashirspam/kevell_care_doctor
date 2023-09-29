part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.fetchChatProfile({
    required String id,
    required bool isReloading
  }) = _FetchChatProfile;
}
