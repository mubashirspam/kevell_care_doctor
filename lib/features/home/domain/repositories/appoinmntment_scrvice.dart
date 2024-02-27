import 'dart:async';
import 'dart:developer';

import 'package:socket_io_client/socket_io_client.dart';

class AppointmentService {
  Socket? socket;

  AppointmentService._();
  static final instance = AppointmentService._();

  Future<bool> init() async {
    Completer<bool> completer = Completer();

    socket = io(
      "https://kevelldigital.com/v2/appointment",
      OptionBuilder().setTransports(['websocket']).build(),
    );

    socket!.onConnect((data) {
      log("Appointment  Socket connected");
      if (!completer.isCompleted) {
        completer.complete(true);
      }
    });

    socket!.onConnectError((data) {
      log("Connect Error $data");
      if (!completer.isCompleted) {
        completer.complete(false);
      }
    });

    socket!.connect();

    return completer.future;
  }
}
