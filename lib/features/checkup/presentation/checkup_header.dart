import 'dart:developer';

import 'package:dr_kevell/features/video_call/presentation/call_screen.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/widgets/avatar/active_avatar.dart';

import '../../video_call/presentation/join_screen.dart';
import '../../video_call/service/signaling_service.dart';

class CheckupHeaderWidget extends StatefulWidget {
  final String selfCallerId;
  final String paitentCallerId;
  const CheckupHeaderWidget({
    super.key,
    required this.paitentCallerId,
    required this.selfCallerId,
  });

  @override
  State<CheckupHeaderWidget> createState() => _CheckupHeaderWidgetState();
}

class _CheckupHeaderWidgetState extends State<CheckupHeaderWidget> {
  dynamic incomingSDPOffer;

  bool isVidecallStarted = false;

  String? callerId;
  String? calleeId;




  @override
  void initState() {
    super.initState();

    // listen for incoming video call
    SignallingService.instance.socket!.on("newCall", (data) {
      log("newCall");
      if (mounted) {
        // set SDP Offer of incoming call
        setState(() => incomingSDPOffer = data);
      }
    });
  }

  // join Call
  makeCall({
    required String jcallerId,
    required String jcalleeId,
    dynamic offer,
  }) {
    setState(() {
      isVidecallStarted = true;

      callerId = jcallerId;
      calleeId = jcalleeId;
    });
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (_) => CallScreen(
    //       callerId: callerId,
    //       calleeId: calleeId,
    //       offer: offer,
    //     ),
    //   ),
    // );
  }

  void answerCall() {
    setState(() {
      isVidecallStarted = true;

      callerId = null;
      calleeId = null;
    });
  }

  void cutCall() {
    setState(() {
      isVidecallStarted = false;
      incomingSDPOffer = null;
      callerId = null;
      calleeId = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isVidecallStarted
        ? CallingWidget(
          cutCall: cutCall,
            callerId: callerId ?? incomingSDPOffer["callerId"]!,
            calleeId: calleeId ?? widget.selfCallerId,
            offer: incomingSDPOffer==null? null : incomingSDPOffer["sdpOffer"],
          )
        : HeaderWidget(
            answerCall: answerCall,
            makeCall:()=> makeCall(
                jcalleeId: widget.paitentCallerId,
                jcallerId: widget.selfCallerId),
            cutCall: cutCall,
            joinCall: () {},
            incomingSDPOffer: incomingSDPOffer,

          );
  }
}

class HeaderWidget extends StatelessWidget {
  final dynamic incomingSDPOffer;
  final VoidCallback joinCall;
  final VoidCallback answerCall;
  final VoidCallback makeCall;
  final VoidCallback cutCall;
  const HeaderWidget(
      {super.key,
      required this.answerCall,
      this.incomingSDPOffer,
      required this.joinCall,
      required this.makeCall,
      required this.cutCall});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: context.theme.primary,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const ActiveAvatar(
                isActive: false,
                imageUrl:
                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
              ),
              const Spacer(),
              TextButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 10,
                      backgroundColor: context.theme.secondary,
                      foregroundColor: context.theme.primary),
                  onPressed: () {},
                  child: const Text("Patient History"))
            ],
          ),
          const SizedBox(height: 15),
          JoinOrCallWidget(
              answerCall: answerCall,
              joinCall: joinCall,
              incomingSDPOffer:incomingSDPOffer ,
              makeCall: makeCall,
              cutCall: cutCall),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              "Case  history",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: context.theme.backround),
            ),
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis pharetra suspendisse nisl, et interdum. Morbi fames et justo, mauris, et, scelerisque in aenean odio. Sed egestas quis pellentesque consectetur leo, proin est, pellentesque lorem. In facilisis suspendisse asellus integer varius lectus iaculis dignissim. ",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: context.theme.backround, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
