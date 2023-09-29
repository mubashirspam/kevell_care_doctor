import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/chat/presentation/widgets/message_widget.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class ChatingListWidget extends StatefulWidget {
  const ChatingListWidget({super.key});

  @override
  State<ChatingListWidget> createState() => _ChatingListWidgetState();
}

class _ChatingListWidgetState extends State<ChatingListWidget> {
  io.Socket? socket;
  List<String> onlineUsers = [];

  @override
  void initState() {
    super.initState();

    // Initialize and connect to the WebSocket server

    // Signalling.instance.init(
    //   websocketUrl: 'https://9cc2-2409-4072-8d9e-ab69-c99f-541-c1ed-399a.ngrok-free.app/chat/api',
    //   selfCallerID: 'doctorID.toString()',
    // );

     socket = io.io('https://9cc2-2409-4072-8d9e-ab69-c99f-541-c1ed-399a.ngrok-free.app/chat/api');

    // Emit a "new-user-add" event when the component mounts
    // socket?.emit("new-user-add", "1003");

    // // Listen for "get-users" event and update the onlineUsers list
    // socket!.on("get-users", (data) {
    //   setState(() {
    //     onlineUsers = data.cast<String>();
    //     log("Online Users: $onlineUsers");
    //   });
    // });

    // Listen for app lifecycle changes
    // WidgetsBinding.instance?.addObserver(AppLifecycleObserver(this));
  }

  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // App has come to the foreground
      socket!.emit("new-user-add", "1003");
      socket!.on("get-users", (data) {
        setState(() {
          onlineUsers = data.cast<String>();
          log("Online Users (Resumed): $onlineUsers");
        });
      });
    } else if (state == AppLifecycleState.inactive || state == AppLifecycleState.paused) {
      // App is going to the background
      socket!.emit("offline");
      log("App is going to the background");
    }
  }

  @override
  void dispose() {
    super.dispose();

    // Disconnect the socket when the component is disposed
    socket!.disconnect();
    socket!.close();
    log("Socket disconnected and closed");
    
    // Remove the observer
    // WidgetsBinding.instance.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20).copyWith(bottom: 0),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: MessageWidget(
          isReciving: index.isEven ? true : false,
        ),
      ),
    );
  }
}


class Signalling {
  // instance of Socket
  io.Socket? socket;

  Signalling._();
  static final instance = Signalling._();

  init({required String websocketUrl, required String selfCallerID}) {
    // init Socket
    socket = io.io(websocketUrl);

    // listen onConnect event
    socket!.onConnect((data) {
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