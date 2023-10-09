import 'dart:developer';
import 'package:socket_io_client/socket_io_client.dart';

import '../../../settings/api/endpoints.dart';

class ChatService {
  // instance of Socket
  Socket? socket;

  ChatService._();
  static final instance = ChatService._();

  init({required int userId}) {
    // init Socket
    socket = io(
      ApiEndPoints.chatWebsocketUrl,
      OptionBuilder().setTransports(['websocket']).build(),
    );

    // listen onConnect event
    socket!.onConnect((data) {
      socket!.emit("new-user-add", userId);
      log("Socket connected !!");
     
    });

    // listen onConnectError event
    socket!.onConnectError((data) {
      log("Connect Error $data");
    });

    // connect socket
    socket!.connect();
  }
}
