import 'package:flutter/material.dart';
import 'package:kevell_care_dr/features/schedule/presentation/today_shedule.dart';
import 'package:kevell_care_dr/features/schedule/presentation/upcoming_schedule.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.maxFinite,
      height: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              "Today’s Schedule ",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 20),
            const TodayeSchedule(),
            Text(
              "Upcoming Schedule ",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 20),
            const UpcomingSchedule(),
          ],
        ),
      ),
    );
  }
}
