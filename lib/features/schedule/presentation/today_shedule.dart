import 'package:flutter/material.dart';
import 'package:kevell_care_dr/features/schedule/presentation/widgets/schedule_card_itm.dart';

class TodayeSchedule extends StatelessWidget {
  const TodayeSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        2,
        (index) => const ScheduleCard(isUpcoming: false),
      ),
    );
  }
}
