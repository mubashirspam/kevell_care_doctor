import 'package:flutter/material.dart';
import 'package:dr_kevell/pages/history/presentation/widgets/history_appbar.dart';
import 'package:dr_kevell/features/profile/presentation/pages/profile_screen.dart';
import 'package:dr_kevell/features/schedule/presentation/pages/schedule_screen.dart';
import 'package:dr_kevell/features/schedule/presentation/widgets/schedule_appbar.dart';
import '../../chat/presentation/pages/chat_screen.dart';
import '../../chat/presentation/widgets/chat_appbar.dart';
import '../../../pages/history/presentation/history_screen.dart';
import '../../home/presentation/pages/home_screen.dart';
import '../../home/presentation/widgets/home_appbar.dart';
import '../../profile/presentation/widgets/profile_appbar.dart';
import 'widgets/bottom_navigation.dart';
import 'widgets/drawer_widget.dart';

class Dashboard extends StatefulWidget {
  static const routeName = '/dashboard';
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  static final List<Map<String, dynamic>> _pagesOptions =
      <Map<String, dynamic>>[
    {
      "page": const HomeScreen(),
      "appbar": const HomeAppBar(),
      "flotingButton": null
    },
    {
      "page": const ScheduleScreen(),
      "appbar": const ScheduleAppBar(),
      "flotingButton": const ScheduleFloatingButton()
    },
    {
      "page": const ChatScreen(),
      "appbar": const ChatAppBar(),
      "flotingButton": null
    },
    {
      "page": const HistoryScreen(),
      "appbar": const HistoryAppBar(),
      "flotingButton": null
    },
    {
      "page": const ProfileScreen(),
      "appbar": const ProfileAppBar(),
      "flotingButton": null
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndexNorifier,
      builder: (context, index, _) {
        return Scaffold(
          //  key: scaffoldMessengerKey,
          drawer: const DrawerWidget(),
          appBar: _pagesOptions.elementAt(index)["appbar"],
          body: _pagesOptions.elementAt(index)["page"],
          floatingActionButton: _pagesOptions.elementAt(index)["flotingButton"],
          bottomNavigationBar: const BottomWidget(),
        );
      },
    );
  }
}
