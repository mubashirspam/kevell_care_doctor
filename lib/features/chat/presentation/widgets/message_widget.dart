import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../../widgets/avatar/active_avatar.dart';

class MessageWidget extends StatelessWidget {
  final String msg;
  final String time;

  final bool isReciving;
  const MessageWidget({
    super.key,
    required this.isReciving,
    required this.msg,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isReciving
          ? const EdgeInsets.only(right: 50, top: 5)
          : const EdgeInsets.only(left: 50, right: 0, top: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isReciving ? context.theme.secondary : context.theme.primary,
        borderRadius: const BorderRadius.all(Radius.circular(10)).copyWith(
          topLeft: isReciving ? const Radius.circular(0) : null,
          topRight: isReciving ? null : const Radius.circular(0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            msg,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: isReciving
                      ? context.theme.textPrimary
                      : context.theme.backround,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            time,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: isReciving
                      ? context.theme.textPrimary
                      : context.theme.backround,
                ),
          )
        ],
      ),
    );
  }
}
