// import 'dart:convert';
// import 'dart:typed_data';
// import 'package:just_audio/just_audio.dart';
// import 'package:flutter/material.dart';

// import '../presentation/stethoscope_widget.dart';

// class MyCustomSource extends StreamAudioSource {
//   final List<int> bytes;
//   MyCustomSource(this.bytes);
  
//   @override
//   Future<StreamAudioResponse> request([int? start, int? end]) async {
//     start ??= 0;
//     end ??= bytes.length;
//     return StreamAudioResponse(
//       sourceLength: bytes.length,
//       contentLength: end - start,
//       offset: start,
//       stream: Stream.value(bytes.sublist(start, end)),
//       contentType: 'audio/mpeg',
//     );
//   }
// }


// class AudioPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () async {
             
//               AudioPlayer player = AudioPlayer();

//               // Decode base64 string to bytes
//               Uint8List bytes = base64Decode(audiooooo);

//               // Play the audio
//               await player.setAudioSource(MyCustomSource(bytes.toList()));
//               player.play();
//             },
//             child: Text('Play Audio'),
//           ),
//         ),
//       );
//   }
// }
