// import 'dart:async';

// import 'package:flutter/material.dart';

// enum MQTTAppConnectionState {
//   connected,
//   disconnected,
//   connecting,
//   connectedSubscribed,
//   connectedUnSubscribed
// }

// class MQTTBloc {
//   final _stateController = StreamController<MQTTAppState>();
//   final _eventController = StreamController<MQTTEvent>();

//   MQTTAppState _currentState = MQTTAppState();

//   Stream<MQTTAppState> get state => _stateController.stream;
//   StreamSink<MQTTEvent> get eventSink => _eventController.sink;

//   MQTTBloc() {
//     _eventController.stream.listen(_mapEventToState);
//   }

//   void _mapEventToState(MQTTEvent event) {
//     if (event is ConnectEvent) {
//       _initializeMQTTClient();
//       _connect();
//     } else if (event is DisconnectEvent) {
//       _disconnect();
//     } else if (event is PublishEvent) {
//       _publish(event.message);
//     } else if (event is SubscribeEvent) {
//       _subscribeTo(event.topic);
//     } else if (event is UnsubscribeEvent) {
//       _unsubscribe(event.topic);
//     }
//   }

//   void _initializeMQTTClient() {
//     // Add your initialization logic here
//   }

//   void _connect() {
//     // Add your connection logic here
//   }

//   void _disconnect() {
//     // Add your disconnection logic here
//   }

//   void _publish(String message) {
//     // Add your publish logic here
//   }

//   void _subscribeTo(String topic) {
//     // Add your subscribe logic here
//   }

//   void _unsubscribe(String topic) {
//     // Add your unsubscribe logic here
//   }

//   void dispose() {
//     _stateController.close();
//     _eventController.close();
//   }
// }

// abstract class MQTTEvent {}

// class ConnectEvent extends MQTTEvent {}

// class DisconnectEvent extends MQTTEvent {}

// class PublishEvent extends MQTTEvent {
//   final String message;

//   PublishEvent(this.message);
// }

// class SubscribeEvent extends MQTTEvent {
//   final String topic;

//   SubscribeEvent(this.topic);
// }

// class UnsubscribeEvent extends MQTTEvent {
//   final String topic;

//   UnsubscribeEvent(this.topic);
// }


// class YourWidget extends StatefulWidget {
//   @override
//   _YourWidgetState createState() => _YourWidgetState();
// }

// class _YourWidgetState extends State<YourWidget> {
//   late MQTTBloc _bloc;

//   @override
//   void initState() {
//     super.initState();
//     _bloc = MQTTBloc();
//     _bloc.eventSink.add(ConnectEvent());
//   }

//   @override
//   void dispose() {
//     _bloc.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _buildAppBar(context) as PreferredSizeWidget?,
//       body: StreamBuilder<MQTTAppState>(
//         stream: _bloc.state,
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return _buildColumn(snapshot.data!);
//           } else {
//             return CircularProgressIndicator();
//           }
//         },
//       ),
//     );
//   }
// }
