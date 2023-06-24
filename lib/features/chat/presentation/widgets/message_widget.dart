
import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

import '../../../widgets/avatar/active_avatar.dart';

class MessageWidget extends StatelessWidget {
  final bool isReciving;
  const MessageWidget({super.key, required this.isReciving});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          isReciving
              ? const ActiveAvatar(
                  isActive: false,
                  radius: 20,
                )
              : const SizedBox(),
          Expanded(
            child: Container(
              margin: isReciving
                  ? const EdgeInsets.only(left: 15, right: 50)
                  : const EdgeInsets.only(left: 100, right: 0),
              padding: const EdgeInsets.all(15).copyWith(left: 20, bottom: 10),
              decoration: BoxDecoration(
                color: isReciving
                    ? context.theme.secondary
                    : context.theme.primary,
                borderRadius:
                    const BorderRadius.all(Radius.circular(5)).copyWith(
                  topLeft: isReciving ? const Radius.circular(0) : null,
                  topRight: isReciving ? null : const Radius.circular(0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Morning ,Lorem ipsum dolor sit amet. ",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: isReciving
                              ? context.theme.textPrimary
                              : context.theme.backround,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "08:22",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: isReciving
                              ? context.theme.textPrimary
                              : context.theme.backround,
                        ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
