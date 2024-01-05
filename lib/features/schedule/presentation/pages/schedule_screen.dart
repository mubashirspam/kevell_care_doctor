import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/schedule/presentation/bloc/schedule_bloc.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/schedule/presentation/today_shedule.dart';
import 'package:dr_kevell/features/schedule/presentation/upcoming_schedule.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class ScheduleScreen extends StatelessWidget {
//   static const routeName = '/schedule-screen';
//   const ScheduleScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       context.read<ScheduleBloc>().add(const ScheduleEvent.getSchedule());
//     });
//     return RefreshIndicator(
//       color: context.theme.primary,
//       onRefresh: () async {
//         context.read<ScheduleBloc>().add(const ScheduleEvent.getSchedule());
//       },
//       child: SizedBox(
//         width: double.maxFinite,
//         height: double.maxFinite,
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: ListView(
//             children: [
//               Text(
//                 "Today’s Schedules ",
//                 style: Theme.of(context).textTheme.titleMedium,
//               ),
//               const SizedBox(height: 20),
//               const TodayeSchedule(),
//               const SizedBox(height: 20),
//               Text(
//                 "Upcoming Schedule ",
//                 style: Theme.of(context).textTheme.titleMedium,
//               ),
//               const SizedBox(height: 20),
//               const UpcomingSchedule(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

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
                  text: 'Not Approved',
                ),
                Tab(text: 'Approved'),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget> [
                 const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: UpcomingSchedule(),
                ),
                 const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: UpcomingSchedule(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Primary and secondary TabBar'),
          bottom: const TabBar(
            indicatorColor: Colors.transparent, // No default indicator
            labelColor: Colors.blue, // Selected tab text color
            unselectedLabelColor: Colors.black, // Unselected tab text color
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                color: Colors.red,
                width: 2,
              ),
            ),
            tabs: <Widget>[
              Tab(
                text: 'Flights',
                icon: Icon(Icons.flight),
              ),
              Tab(
                text: 'Trips',
                icon: Icon(Icons.luggage),
              ),
              Tab(
                text: 'Explore',
                icon: Icon(Icons.explore),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            NestedTabBar('Flights'),
            NestedTabBar('Trips'),
            NestedTabBar('Explore'),
          ],
        ),
      ),
    );
  }
}

class NestedTabBar extends StatefulWidget {
  const NestedTabBar(this.outerTab, {super.key});

  final String outerTab;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar.secondary(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: 'Overview'),
            Tab(text: 'Specifications'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(child: Text('${widget.outerTab}: Overview tab')),
              ),
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(
                    child: Text('${widget.outerTab}: Specifications tab')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
