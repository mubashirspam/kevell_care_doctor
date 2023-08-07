import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import 'package:flutter/material.dart';

class ScheduleYourTimeLeadingWidget extends StatelessWidget {
  const ScheduleYourTimeLeadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [Color(0xFF0095F7), Color(0xFFD3B7F6)],
          begin: Alignment(0, 0),
          end: Alignment(1, 0),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.calendar_month,
            color: context.theme.backround,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              "Schedule your time today",
              style:
                  Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: context.theme.backround,
                      ),
            ),
          ),
          Icon(
            Icons.arrow_forward,
            color: context.theme.backround,
          )
        ],
      ),
    );
  }
}