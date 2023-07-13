import 'package:flutter/material.dart';
import 'package:kevell_care_dr/pages/chat/presentation/chat_screen.dart';
import 'package:kevell_care_dr/pages/history/presentation/widgets/history_appbar.dart';
import 'package:kevell_care_dr/pages/profile/presentation/profile_screen.dart';
import 'package:kevell_care_dr/pages/schedule/presentation/schedule_screen.dart';
import 'package:kevell_care_dr/pages/schedule/presentation/widgets/schedule_appbar.dart';
import '../../chat/presentation/widgets/chat_appbar.dart';
import '../../history/presentation/history_screen.dart';
import '../../home_screen/presentation/home_screen.dart';
import '../../home_screen/presentation/widgets/home_appbar.dart';
import '../../profile/presentation/widgets/profile_appbar.dart';
import 'widgets/bottom_navigation.dart';



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
          appBar: _pagesOptions.elementAt(index)["appbar"],
          body: _pagesOptions.elementAt(index)["page"],
          floatingActionButton: _pagesOptions.elementAt(index)["flotingButton"],
          bottomNavigationBar: const BottomWidget(),
        );
      },
    );
  }
}
