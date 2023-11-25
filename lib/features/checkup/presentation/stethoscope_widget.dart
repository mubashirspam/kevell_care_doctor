import 'dart:async';
import 'dart:convert';

import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/checkup/presentation/widgets/checkup_card.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

// import 'package:flutter_audio_visualizer/flutter_audio_visualizer.dart';

class StethoscopeWidget extends StatefulWidget {
  final List<String> audio;
  final VoidCallback onpress;
  final bool isReading;
  final bool isLoading;
  const StethoscopeWidget(
      {super.key,
      required this.audio,
      required this.onpress,
      required this.isReading,
      required this.isLoading});

  @override
  State<StethoscopeWidget> createState() => _StethoscopeWidgetState();
}

class _StethoscopeWidgetState extends State<StethoscopeWidget> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;

  bool isLoading = false;

  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }

  late StreamSubscription<PlayerState> playerStateSubscription;
  late StreamSubscription<Duration> durationChangedSubscription;
  late StreamSubscription<Duration> positionChangedSubscription;

  @override
  void initState() {
    // _initAudioStreaming();

    playerStateSubscription = audioPlayer.onPlayerStateChanged.listen((event) {
      setState(() {
        isPlaying = event == PlayerState.playing;
      });
    });

    // Add this to your initState method
    audioPlayer.onPlayerStateChanged.listen((PlayerState state) {
      if (state == PlayerState.completed) {
        playNextAudio();
      }
    });

    durationChangedSubscription =
        audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    positionChangedSubscription =
        audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });

    super.initState();
  }

  Uint8List? bytes;
  // void convertFile() async {
  //   setState(() => isLoading = true);

  //   bytes = base64Decode(widget.audio);

  //   setState(() => isLoading = false);
  // }

  // List<String> audioQueue = []; // Your list of base64 audio strings
  int currentAudioIndex = 0; // To keep track of the current audio

  void playNextAudio() async {
    if (currentAudioIndex < widget.audio.length) {
      String audio = widget.audio[currentAudioIndex];
      bytes = base64Decode(audio);

      await audioPlayer.play(BytesSource(bytes!));

      currentAudioIndex++;
    }
  }

  @override
  void dispose() {
    playerStateSubscription.cancel();
    durationChangedSubscription.cancel();
    positionChangedSubscription.cancel();
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CheckupCard(
      isLoading: widget.isLoading,
      name: "Stethoscope",
      onPress: widget.onpress,
      children: [
        SizedBox(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: isLoading
                          ? CircularProgressIndicator(
                              backgroundColor: Colors.white.withOpacity(0.3),
                              color: Colors.white,
                            )
                          : IconButton(
                              color: Colors.white,
                              onPressed: () async {
                                if (isPlaying) {
                                  await audioPlayer.pause();
                                } else {
                                  if (widget.audio.isNotEmpty) {
                                    playNextAudio();
                                  }
                                }
                              },
                              icon: Icon(
                                isPlaying ? Icons.pause : Icons.play_arrow,
                                color: context.theme.primary,
                                size: 30,
                              ),
                            ),
                    
                    ),
                  ),
                  Expanded(child: SizedBox(height: 30, child: buildSlider()))

                  // widget.isReading
                  //     ? Lottie.asset(AppLottie.loading,
                  //         fit: BoxFit.contain, height: 60)
                  //     : const SizedBox()
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: Text(
                      formatTime(duration),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 22),
                    child: Text(
                      formatTime(duration - position),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget buildSlider() => Slider(
        inactiveColor: context.theme.primary!.withOpacity(0.4),
        thumbColor: context.theme.primary,
        activeColor: context.theme.primary,
        min: 0,
        max: duration.inSeconds.toDouble(),
        value: position.inSeconds.toDouble(),
        onChanged: (value) async {
          final position = Duration(seconds: value.toInt());
          await audioPlayer.seek(position);
          await audioPlayer.resume();
        },
      );
}




// Inside your widget build method
// Visualizer(
//   id: 'your_audio_id', // Replace with your audio player's id
//   builder: (BuildContext context, List<int> fft) {
//     return CustomPaint(
//       painter: WavePainter(fft), // You'll need to create this custom painter
//     );
//   },
// );

// Then, create a custom painter to draw the wave
class WavePainter extends CustomPainter {
  final List<int> fft;

  WavePainter(this.fft);

  @override
  void paint(Canvas canvas, Size size) {
    // Here, you can draw the wave based on the fft data
    // This is just a simple example and may not create a perfect wave
    final paint = Paint()..color = Colors.blue;
    for (int i = 0; i < fft.length; i++) {
      final barHeight = fft[i] / 500; // Adjust this value to fit your needs
      canvas.drawRect(
        Rect.fromLTWH(i.toDouble(), size.height - barHeight, 1, barHeight),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
