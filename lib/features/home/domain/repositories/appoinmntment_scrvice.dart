import 'dart:developer';
import 'package:socket_io_client/socket_io_client.dart';

class AppointmentService {
  // instance of Socket
  Socket? socket;

  AppointmentService._();
  static final instance = AppointmentService._();

  Future<bool> init() async {
    socket = io(
      "https://eae7-2409-4072-6c11-179-47-5c3d-5938-78be.ngrok-free.app/appointment/api",
      OptionBuilder().setTransports(['websocket']).build(),
    );

    // listen onConnect event
    socket!.onConnect((data) {
      log("Appointment Chat Socket connected");

      return true;

      // AppointmentService.instance.socket!.emit(
      //     "check-starttime", {"appointment_id": 1289, "patient_id": 1003});

      // AppointmentService.instance.socket!.on(" appiontment-starttime", (data) {
      //   log("appiontment called ======= $data");
      //   log(data.toString());
      // });
    });

    // listen onConnectError event
    socket!.onConnectError((data) {
      log("Connect Error $data");

      return false;
    });

    // connect socket
    socket!.connect();

    return false;
  }

  // init Socket
}
