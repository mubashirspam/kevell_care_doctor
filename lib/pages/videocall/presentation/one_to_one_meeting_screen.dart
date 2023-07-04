import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kevell_care_dr/core/helper/toast.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';
import 'package:kevell_care_dr/pages/videocall/presentation/widgets/meeting_appbar.dart';
import 'package:videosdk/videosdk.dart';

import '../../../features/video_call/presentation/widgets/join_screen.dart';
import '../../../features/video_call/presentation/widgets/joining/participant_limit_reached.dart';
import '../../../features/video_call/presentation/widgets/joining/waiting_to_join.dart';
import '../../../features/video_call/presentation/widgets/meeting_action_bar.dart';
import '../../../features/video_call/presentation/one_to_one_meeting_container.dart';
import '../../../features/video_call/presentation/widgets/participant/participant_list.dart';


// Meeting Screen
class OneToOneMeetingScreen extends StatefulWidget {
    static const routeName = '/video-call';
  final String meetingId, token, displayName;
  final bool micEnabled, camEnabled, chatEnabled;
  const OneToOneMeetingScreen({
    Key? key,
    required this.meetingId,
    required this.token,
    required this.displayName,
    this.micEnabled = true,
    this.camEnabled = true,
    this.chatEnabled = true,
  }) : super(key: key);

  @override
  State<OneToOneMeetingScreen> createState() => _OneToOneMeetingScreenState();
}

class _OneToOneMeetingScreenState extends State<OneToOneMeetingScreen> {
  bool isRecordingOn = false;
  bool showChatSnackbar = true;
  String recordingState = "RECORDING_STOPPED";
  // Meeting
  late Room meeting;
  bool _joined = false;
  bool _moreThan2Participants = false;

  // Streams
  Stream? shareStream;
  Stream? videoStream;
  Stream? audioStream;
  Stream? remoteParticipantShareStream;

  bool fullScreen = false;

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // Create instance of Room (Meeting)
    Room room = VideoSDK.createRoom(
      roomId: widget.meetingId,
      token: widget.token,
      displayName: widget.displayName,
      micEnabled: widget.micEnabled,
      camEnabled: widget.camEnabled,
      maxResolution: 'hd',
      multiStream: false,
      defaultCameraIndex: 1,
      notification: const NotificationInfo(
        title: "Video SDK",
        message: "Video SDK is sharing screen in the meeting",
        icon: "notification_share", // drawable icon name
      ),
    );

    // Register meeting events
    registerMeetingEvents(room);

    // Join meeting
    room.join();
  }

  @override
  Widget build(BuildContext context) {
    //Get statusbar height

    bool isWebMobile = kIsWeb &&
        (defaultTargetPlatform == TargetPlatform.iOS ||
            defaultTargetPlatform == TargetPlatform.android);
    return WillPopScope(
      onWillPop: _onWillPopScope,
      child: _joined
          ? SafeArea(
              child: Scaffold(
                  backgroundColor: Theme.of(context).primaryColor,
                  body: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      MeetingAppBar(
                        meeting: meeting,
                        token: widget.token,
                        recordingState: recordingState,
                        isFullScreen: fullScreen,
                      ),
                      const Divider(),
                      Expanded(
                        child: GestureDetector(
                            onDoubleTap: () => {
                                  setState(() {
                                    fullScreen = !fullScreen;
                                  })
                                },
                            child: OneToOneMeetingContainer(meeting: meeting)),
                      ),
                      !isWebMobile &&
                              (kIsWeb || Platform.isMacOS || Platform.isWindows)
                          ? Container()
                          : Column(
                              children: [
                                const Divider(),
                                AnimatedCrossFade(
                                  duration: const Duration(milliseconds: 300),
                                  crossFadeState: !fullScreen
                                      ? CrossFadeState.showFirst
                                      : CrossFadeState.showSecond,
                                  secondChild: const SizedBox.shrink(),
                                  firstChild: MeetingActionBar(
                                    isMicEnabled: audioStream != null,
                                    isCamEnabled: videoStream != null,
                                    isScreenShareEnabled: shareStream != null,
                                    recordingState: recordingState,
                                    // Called when Call End button is pressed
                                    onCallEndButtonPressed: () {
                                      meeting.end();
                                    },

                                    onCallLeaveButtonPressed: () {
                                      meeting.leave();
                                    },
                                    // Called when mic button is pressed
                                    onMicButtonPressed: () {
                                      if (audioStream != null) {
                                        meeting.muteMic();
                                      } else {
                                        meeting.unmuteMic();
                                      }
                                    },
                                    // Called when camera button is pressed
                                    onCameraButtonPressed: () {
                                      if (videoStream != null) {
                                        meeting.disableCam();
                                      } else {
                                        meeting.enableCam();
                                      }
                                    },

                                    onSwitchMicButtonPressed: (details) async {
                                      List<MediaDeviceInfo> outptuDevice =
                                          meeting.getAudioOutputDevices();
                                      double bottomMargin =
                                          (70.0 * outptuDevice.length);
                                      final screenSize =
                                          MediaQuery.of(context).size;
                                      await showMenu(
                                        context: context,
                                        color: context.theme.primary,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        position: RelativeRect.fromLTRB(
                                          screenSize.width -
                                              details.globalPosition.dx,
                                          details.globalPosition.dy -
                                              bottomMargin,
                                          details.globalPosition.dx,
                                          (bottomMargin),
                                        ),
                                        items: outptuDevice.map((e) {
                                          return PopupMenuItem(
                                              value: e, child: Text(e.label));
                                        }).toList(),
                                        elevation: 8.0,
                                      ).then((value) {
                                        if (value != null) {
                                          meeting.switchAudioDevice(value);
                                        }
                                      });
                                    },

                                    onChatButtonPressed: () {
                                      setState(() {
                                        showChatSnackbar = false;
                                      });
                                      // showModalBottomSheet(
                                      //   context: context,
                                      //   constraints: BoxConstraints(
                                      //       maxHeight: MediaQuery.of(context)
                                      //               .size
                                      //               .height -
                                      //           statusbarHeight),
                                      //   isScrollControlled: true,
                                      //   builder: (context) => ChatView(
                                      //       key: const Key("ChatScreen"),
                                      //       meeting: meeting),
                                      // ).whenComplete(() => {
                                      //       setState(() {
                                      //         showChatSnackbar = true;
                                      //       })
                                      //     });
                                    },

                                    // Called when more options button is pressed
                                    onMoreOptionSelected: (option) {
                                      // Showing more options dialog box
                                      if (option == "screenshare") {
                                        if (remoteParticipantShareStream ==
                                            null) {
                                          if (shareStream == null) {
                                            meeting.enableScreenShare();
                                          } else {
                                            meeting.disableScreenShare();
                                          }
                                        } else {
                                          Toast.showToast(
                                              context: context,
                                              message:
                                                  "Someone is already presenting");
                                        }
                                      } else if (option == "recording") {
                                        if (recordingState ==
                                            "RECORDING_STOPPING") {
                                          Toast.showToast(
                                              context: context,
                                              message:
                                                  "Recording is in stopping state");
                                        } else if (recordingState ==
                                            "RECORDING_STARTED") {
                                          meeting.stopRecording();
                                        } else if (recordingState ==
                                            "RECORDING_STARTING") {
                                          Toast.showToast(
                                              context: context,
                                              message:
                                                  "Recording is in starting state");
                                        } else {
                                          meeting.startRecording();
                                        }
                                      } else if (option == "participants") {
                                        Toast.showToast(
                                            context: context,
                                            message:
                                                "Someone is already presenting");
                                        showModalBottomSheet(
                                          context: context,
                                          // constraints: BoxConstraints(
                                          //     maxHeight: MediaQuery.of(context).size.height -
                                          //         statusbarHeight),
                                          isScrollControlled: false,
                                          builder: (context) =>
                                              ParticipantList(meeting: meeting),
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                    ],
                  )),
            )
          : _moreThan2Participants
              ? ParticipantLimitReached(
                  meeting: meeting,
                )
              : const WaitingToJoin(),
    );
  }

  void registerMeetingEvents(Room meeting) {
    // Called when joined in meeting
    meeting.on(
      Events.roomJoined,
      () {
        if (meeting.participants.length > 1) {
          setState(() {
            meeting = meeting;
            _moreThan2Participants = true;
          });
        } else {
          setState(() {
            meeting = meeting;
            _joined = true;
          });

          subscribeToChatMessages(meeting);
        }
      },
    );

    // Called when meeting is ended
    meeting.on(Events.roomLeft, (String? errorMsg) {
      if (errorMsg != null) {
        Toast.showToast(
            context: context, message: "Meeting left due to $errorMsg !!");
      }
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const JoinScreen()),
          (route) => false);
    });

    // Called when recording is started
    meeting.on(Events.recordingStateChanged, (String status) {
      Toast.showToast(
          context: context,
          message:
              "Meeting recording ${status == "RECORDING_STARTING" ? "is starting" : status == "RECORDING_STARTED" ? "started" : status == "RECORDING_STOPPING" ? "is stopping" : "stopped"}");

      setState(() {
        recordingState = status;
      });
    });

    // Called when stream is enabled
    meeting.localParticipant.on(Events.streamEnabled, (Stream stream) {
      if (stream.kind == 'video') {
        setState(() {
          videoStream = stream;
        });
      } else if (stream.kind == 'audio') {
        setState(() {
          audioStream = stream;
        });
      } else if (stream.kind == 'share') {
        setState(() {
          shareStream = stream;
        });
      }
    });

    // Called when stream is disabled
    meeting.localParticipant.on(Events.streamDisabled, (Stream stream) {
      if (stream.kind == 'video' && videoStream?.id == stream.id) {
        setState(() {
          videoStream = null;
        });
      } else if (stream.kind == 'audio' && audioStream?.id == stream.id) {
        setState(() {
          audioStream = null;
        });
      } else if (stream.kind == 'share' && shareStream?.id == stream.id) {
        setState(() {
          shareStream = null;
        });
      }
    });

    // Called when presenter is changed
    meeting.on(Events.presenterChanged, (activePresenterId) {
      Participant? activePresenterParticipant =
          meeting.participants[activePresenterId];

      // Get Share Stream
      Stream? stream = activePresenterParticipant?.streams.values
          .singleWhere((e) => e.kind == "share");

      setState(() => remoteParticipantShareStream = stream);
    });

    meeting.on(
        Events.participantLeft,
        (participant) => {
              if (_moreThan2Participants)
                {
                  if (meeting.participants.length < 2)
                    {
                      setState(() {
                        _joined = true;
                        _moreThan2Participants = false;
                      }),
                      subscribeToChatMessages(meeting),
                    }
                }
            });

    meeting.on(
        Events.error,
        (error) => {
              Toast.showToast(
                  message: "${error['name']} :: ${error['message']}",
                  context: context)
            });
  }

  void subscribeToChatMessages(Room meeting) {
    meeting.pubSub.subscribe("CHAT", (message) {
      if (message.senderId != meeting.localParticipant.id) {
        if (mounted) {
          // print("navigator key");
          // print(navigatorKey.currentWidget?.key.toString());
          if (showChatSnackbar) {
            Toast.showToast(
                message: "${message.senderName}: ${message.message}",
                context: context);
          }
        }
      }
    });
  }

  Future<bool> _onWillPopScope() async {
    meeting.leave();
    return true;
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }
}
