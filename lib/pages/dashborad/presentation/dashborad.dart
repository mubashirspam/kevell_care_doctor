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

// class Dashboard extends StatefulWidget {
//   final Widget child;
//   final List<PreferredSizeWidget?> appBar;
//   const Dashboard({super.key, required this.child, required this.appBar});

//   @override
//   State<Dashboard> createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   int get _currentIndex => _locationToTabIndex(GoRouter.of(context).location);

//   int _locationToTabIndex(String location) {
//     final index =
//         tabs.indexWhere((t) => location.startsWith(t.initialLocation));
//     // if index not found (-1), return 0
//     return index < 0 ? 0 : index;
//   }

//   // callback used to navigate to the desired tab
//   void _onItemTapped(BuildContext context, int tabIndex) {
//     if (tabIndex != _currentIndex) {
//       // go to the initial location of the selected tab (by index)
//       context.go(tabs[tabIndex].initialLocation);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: widget.appBar[_currentIndex],
//         body: widget.child,
//         bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: context.theme.backround,
//           elevation: 2,
//           selectedItemColor: context.theme.primary,
//           unselectedItemColor: context.theme.backround,
//           items: tabs,
//           currentIndex: _currentIndex,
//           onTap: (index) => _onItemTapped(context, index),
//         ),
//         floatingActionButton: _currentIndex == 1
//             ? FloatingActionButton(
//                 backgroundColor: context.theme.primary,
//                 onPressed: () {
//                   context.go("/schedule_your_time");
//                 },
//                 child: Icon(
//                   Icons.calendar_month,
//                   color: context.theme.backround,
//                 ),
//               )
//             : null);
//   }
// }

// List<ScaffoldWithNavBarTabItem> tabs = [
//   ScaffoldWithNavBarTabItem(
//     backgroundColor: Colors.white,
//     initialLocation: '/home',
//     icon: SvgPicture.asset(
//       AppIcons.home,
//     ),
//     label: 'Home',
//   ),
//   ScaffoldWithNavBarTabItem(
//     backgroundColor: Colors.white,
//     initialLocation: '/schedule',
//     icon: SvgPicture.asset(AppIcons.schedule),
//     label: 'Schedule',
//   ),
//   ScaffoldWithNavBarTabItem(
//     backgroundColor: Colors.white,
//     initialLocation: '/chat',
//     icon: SvgPicture.asset(AppIcons.chat),
//     label: 'chat',
//   ),
//   ScaffoldWithNavBarTabItem(
//     backgroundColor: Colors.white,
//     initialLocation: '/history',
//     icon: SvgPicture.asset(AppIcons.history),
//     label: 'History ',
//   ),
//   ScaffoldWithNavBarTabItem(
//     backgroundColor: Colors.white,
//     initialLocation: '/profile',
//     icon: SvgPicture.asset(AppIcons.profile),
//     label: 'profile',
//   ),
// ];

// class ScaffoldWithNavBarTabItem extends BottomNavigationBarItem {
//   const ScaffoldWithNavBarTabItem({
//     required this.initialLocation,
//     required Color backgroundColor,
//     required Widget icon,
//     String? label,
//   }) : super(icon: icon, label: label, backgroundColor: backgroundColor);

//   /// The initial location/path
//   final String initialLocation;
// }

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
