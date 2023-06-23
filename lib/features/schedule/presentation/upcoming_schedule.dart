import 'package:flutter/material.dart';
import 'package:kevell_care_dr/features/schedule/presentation/widgets/schedule_card_itm.dart';

class UpcomingSchedule extends StatelessWidget {
  const UpcomingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        5,
        (index) => const ScheduleCard(isUpcoming: true),
      ),
    );
  }
}