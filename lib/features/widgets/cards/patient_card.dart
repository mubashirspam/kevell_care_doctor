import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

import '../avatar/active_avatar.dart';

class PatentCard extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;
  const PatentCard({
    super.key,
    required this.buttonName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 15),
      padding: const EdgeInsets.all(15),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffBDE5FF),
      ),
      child: Row(
        children: [
          const ActiveAvatar(),
          const SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Johnny Greig",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                "General Checkup",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: context.theme.primary,
            ),
            onPressed: onPressed,
            child: Text(
              buttonName,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: context.theme.backround,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
