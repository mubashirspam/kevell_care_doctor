import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/schedule/presentation/bloc/schedule_bloc.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/schedule/presentation/today_shedule.dart';
import 'package:dr_kevell/features/schedule/presentation/upcoming_schedule.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScheduleScreen extends StatelessWidget {
  static const routeName = '/schedule-screen';
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ScheduleBloc>().add(const ScheduleEvent.getSchedule());
    });
    return RefreshIndicator(
      color: context.theme.primary,
      onRefresh: () async {
        context.read<ScheduleBloc>().add(const ScheduleEvent.getSchedule());
      },
      child: SizedBox(
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
              const SizedBox(height: 20),
              Text(
                "Upcoming Schedule ",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 20),
              const UpcomingSchedule(),
            ],
          ),
        ),
      ),
    );
  }
}
