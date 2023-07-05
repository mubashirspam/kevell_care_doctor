import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';
import 'package:kevell_care_dr/features/video_call/presentation/widgets/participant_view.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:videosdk/videosdk.dart';


class OneToOneMeetingContainer extends StatefulWidget {
  final Room meeting;
  const OneToOneMeetingContainer({Key? key, required this.meeting})
      : super(key: key);

  @override
  State<OneToOneMeetingContainer> createState() =>
      _OneToOneMeetingContainerState();
}

class _OneToOneMeetingContainerState extends State<OneToOneMeetingContainer> {
  Stream? localVideoStream;
  Stream? localShareStream;
  Stream? localAudioStream;
  Stream? remoteAudioStream;
  Stream? remoteVideoStream;
  Stream? remoteShareStream;

  Stream? largeViewStream;
  Stream? smallViewStream;
  Participant? largeParticipant, smallParticipant;
  Participant? localParticipant, remoteParticipant;
  String? activeSpeakerId, presenterId;

  bool isSmallViewLeftAligned = false;

  @override
  void initState() {
    localParticipant = widget.meeting.localParticipant;
    // Setting meeting event listeners
    setMeetingListeners(widget.meeting);

    try {
      remoteParticipant = widget.meeting.participants.isNotEmpty
          ? widget.meeting.participants.entries.first.value
          : null;
      if (remoteParticipant != null) {
        addParticipantListener(remoteParticipant!, true);
      }
    } catch (error) {}
    addParticipantListener(localParticipant!, false);
    super.initState();
    updateView();
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;
    bool isWebMobile = kIsWeb &&
        (defaultTargetPlatform == TargetPlatform.iOS ||
            defaultTargetPlatform == TargetPlatform.android);
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
      child: IntrinsicHeight(
        child: Stack(children: [
          Container(
              width: kIsWeb ? isWebMobile ? maxWidth : maxWidth / 1.5 : maxWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: context.theme.primary,
              ),
              child: ParticipantView(
                avatarBackground: Colors.black87,
                stream: largeViewStream,
                isMicOn: remoteParticipant != null
                    ? remoteAudioStream != null
                    : localAudioStream != null,
                onStopScreeenSharePressed: () =>
                    widget.meeting.disableScreenShare(),
                participant: remoteParticipant != null
                    ? remoteParticipant!
                    : localParticipant!,
                isLocalScreenShare: localShareStream != null,
                isScreenShare:
                    remoteShareStream != null || localShareStream != null,
                avatarTextSize: 40,
              )),
          if (remoteParticipant != null || localShareStream != null)
            Positioned(
                right: isSmallViewLeftAligned ? null : 8,
                left: isSmallViewLeftAligned ? 8 : null,
                bottom: 8,
                child: GestureDetector(
                  onHorizontalDragUpdate: (details) {
                    // Note: Sensitivity is integer used when you don't want to mess up vertical drag
                    int sensitivity = 8;
                    if (details.delta.dx > sensitivity) {
                      // Right Swipe
                      setState(() {
                        isSmallViewLeftAligned = false;
                      });
                    } else if (details.delta.dx < -sensitivity) {
                      //Left Swipe
                      setState(() {
                        isSmallViewLeftAligned = true;
                      });
                    }
                  },
                  child: Container(
                      height:
                          ResponsiveValue<double>(context, conditionalValues: [
                        Condition.equals(name: MOBILE, value: maxHeight / 4),
                        Condition.equals(name: TABLET, value: maxHeight / 3),
                        Condition.largerThan(name: TABLET, value: 230),
                      ]).value!,
                      width:
                          ResponsiveValue<double>(context, conditionalValues: [
                        Condition.equals(name: MOBILE, value: maxWidth / 3),
                        Condition.equals(name: TABLET, value: maxWidth / 3),
                        Condition.largerThan(name: TABLET, value: 320),
                      ]).value!,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black,
                      ),
                      child: ParticipantView(
                        avatarTextSize: 30,
                        avatarBackground: Colors.black38,
                        stream: smallViewStream,
                        isMicOn: (localAudioStream != null &&
                                remoteShareStream == null) ||
                            (remoteAudioStream != null &&
                                remoteShareStream != null),
                        onStopScreeenSharePressed: () =>
                            widget.meeting.disableScreenShare(),
                        participant: remoteShareStream != null
                            ? remoteParticipant!
                            : localParticipant!,
                        isLocalScreenShare: false,
                        isScreenShare: false,
                      )),
                )),
        ]),
      ),
    );
  }

  void setMeetingListeners(Room meeting) {
    // Called when participant joined meeting
    meeting.on(
      Events.participantJoined,
      (Participant participant) {
        setState(() {
          remoteParticipant = widget.meeting.participants.isNotEmpty
              ? widget.meeting.participants.entries.first.value
              : null;
          updateView();

          if (remoteParticipant != null) {
            addParticipantListener(remoteParticipant!, true);
          }
        });
      },
    );

    // Called when participant left meeting
    meeting.on(
      Events.participantLeft,
      (participantId) {
        if (remoteParticipant?.id == participantId) {
          setState(() {
            remoteParticipant = null;
            remoteShareStream = null;
            remoteVideoStream = null;
            updateView();
          });
        }
        setState(() {
          remoteParticipant = widget.meeting.participants.isNotEmpty
              ? widget.meeting.participants.entries.first.value
              : null;
          if (remoteParticipant != null) {
            addParticipantListener(remoteParticipant!, true);
            updateView();
          }
        });
      },
    );

    meeting.on(Events.presenterChanged, (presenterId) {
      setState(() {
        presenterId = presenterId;
      });
    });

    // Called when speaker is changed
    meeting.on(Events.speakerChanged, (activeSpeakerId) {
      setState(() {
        activeSpeakerId = activeSpeakerId;
      });
    });
  }

  void updateView() {
    Stream? largeViewStream, smallViewStream;
    if (remoteParticipant != null) {
      if (remoteShareStream != null) {
        largeViewStream = remoteShareStream;
      } else if (localShareStream != null) {
        largeViewStream = null;
      } else {
        largeViewStream = remoteVideoStream;
      }
      if (remoteShareStream != null || localShareStream != null) {
        if (remoteVideoStream != null) {
          smallViewStream = remoteVideoStream;
        }
      } else {
        smallViewStream = localVideoStream;
      }
    } else {
      if (localShareStream != null) {
        smallViewStream = localVideoStream;
      } else {
        largeViewStream = localVideoStream;
      }
    }
    setState(() {
      largeViewStream = largeViewStream;
      smallViewStream = smallViewStream;
    });
  }

  void addParticipantListener(Participant participant, bool isRemote) {
    participant.streams.forEach((key, Stream stream) {
      setState(() {
        if (stream.kind == 'video') {
          if (isRemote) {
            remoteVideoStream = stream;
          } else {
            localVideoStream = stream;
          }
        } else if (stream.kind == 'share') {
          if (isRemote) {
            remoteShareStream = stream;
          } else {
            localShareStream = stream;
          }
        } else if (stream.kind == 'audio') {
          if (isRemote) {
            remoteAudioStream = stream;
          } else {
            localAudioStream = stream;
          }
        }
        updateView();
      });
    });
    participant.on(Events.streamEnabled, (Stream stream) {
      setState(() {
        if (stream.kind == "video") {
          if (isRemote) {
            remoteVideoStream = stream;
          } else {
            localVideoStream = stream;
          }
        } else if (stream.kind == "share") {
          if (isRemote) {
            remoteShareStream = stream;
          } else {
            localShareStream = stream;
          }
        } else if (stream.kind == 'audio') {
          if (isRemote) {
            remoteAudioStream = stream;
          } else {
            localAudioStream = stream;
          }
        }
        updateView();
      });
    });

    participant.on(Events.streamDisabled, (Stream stream) {
      setState(() {
        if (stream.kind == "video") {
          if (isRemote) {
            remoteVideoStream = null;
          } else {
            localVideoStream = null;
          }
        } else if (stream.kind == "share") {
          if (isRemote) {
            remoteShareStream = null;
          } else {
            localShareStream = null;
          }
        } else if (stream.kind == 'audio') {
          if (isRemote) {
            remoteAudioStream = null;
          } else {
            localAudioStream = null;
          }
        }
        updateView();
      });
    });
  }
}
