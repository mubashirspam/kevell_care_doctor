import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/schedule/presentation/approved_shedule.dart';
import 'package:dr_kevell/features/schedule/presentation/bloc/schedule_bloc.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/schedule/presentation/not_approved_schedule.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScheduleScreen extends StatefulWidget {
  static const routeName = '/schedule-screen';
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    context.read<ScheduleBloc>().add(const ScheduleEvent.getSchedule());
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: context.theme.primary,
      onRefresh: () async {
        context.read<ScheduleBloc>().add(const ScheduleEvent.getSchedule());
      },
      child: Column(
        children: <Widget>[
          ColoredBox(
            color: context.theme.secondary!,
            child: TabBar(
              controller: _tabController,

              unselectedLabelColor:
                  context.theme.textPrimary, // Unselected tab text color
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  color: context.theme.primary!,
                  width: 3,
                ),
              ),
              labelStyle: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: context.theme.primary),
              unselectedLabelStyle: Theme.of(context).textTheme.headlineSmall,

              tabs: const <Widget>[
                Tab(
                  text: 'Approved',
                ),
                Tab(text: 'Not Approved'),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ApprovedSchedule(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: NotApprovedSchedule(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

