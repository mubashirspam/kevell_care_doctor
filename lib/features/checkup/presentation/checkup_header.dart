import 'dart:developer';

import 'package:dr_kevell/features/video_call/presentation/call_screen.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../video_call/presentation/join_screen.dart';
import '../../video_call/service/signaling_service.dart';

class CheckupHeaderWidget extends StatefulWidget {
  final String selfCallerId;
  final String imageUrl;
  final String name;
  final String type;
  final String paitentCallerId;
  const CheckupHeaderWidget(
      {super.key,
      required this.paitentCallerId,
      required this.selfCallerId,
      required this.name,
      required this.type,
      required this.imageUrl});

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
    log(widget.paitentCallerId);
    log(widget.selfCallerId);
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
            offer:
                incomingSDPOffer == null ? null : incomingSDPOffer["sdpOffer"],
          )
        : HeaderWidget(
            type: widget.type,
            imageUrl: widget.imageUrl,
            name: widget.name,
            answerCall: answerCall,
            makeCall: () => makeCall(
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
  final String imageUrl;
  final String name;
  final String type;
  final VoidCallback joinCall;
  final VoidCallback answerCall;
  final VoidCallback makeCall;
  final VoidCallback cutCall;
  const HeaderWidget(
      {super.key,
      required this.answerCall,
      this.incomingSDPOffer,
      required this.joinCall,
      required this.name,
      required this.type,
      required this.makeCall,
      required this.imageUrl,
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
          JoinOrCallWidget(
            answerCall: answerCall,
            joinCall: joinCall,
            incomingSDPOffer: incomingSDPOffer,
            makeCall: makeCall,
            cutCall: cutCall,
            imageUrl: imageUrl,
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: context.theme.backround,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 5),
            child: Text(
              "Case  history",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: context.theme.backround),
            ),
          ),
          Text(
            type,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: context.theme.backround, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
