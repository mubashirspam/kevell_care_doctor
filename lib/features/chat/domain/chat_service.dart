import 'dart:developer';
import 'package:socket_io_client/socket_io_client.dart';

import '../../../settings/api/endpoints.dart';
import '../../../settings/value/constant.dart';
import '../../../settings/value/secure_storage.dart';

class ChatService {
  // instance of Socket
  Socket? socket;

  ChatService._();
  static final instance = ChatService._();

  init() async {
    final id = await getFromSS(drIdsecureStoreKey);
    int userId;
    if (id != null) {
      userId = int.parse(id);

      socket = io(
        ApiEndPoints.chatWebsocketUrl,
        OptionBuilder().setTransports(['websocket']).build(),
      );

      // listen onConnect event
      socket!.onConnect((data) {
        socket!.emit("new-user-add", userId);
        log("Chat Socket connected !id $userId");
      });

      // listen onConnectError event
      socket!.onConnectError((data) {
        log("Connect Error $data");
      });

      // connect socket
      socket!.connect();
    }

    // init Socket
  }
}
