import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kevell_care_dr/configure/assets_manage/icons.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

class Dashboard extends StatefulWidget {
  final Widget child;
  final List<PreferredSizeWidget?> appBar;
  const Dashboard({super.key, required this.child, required this.appBar});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int get _currentIndex => _locationToTabIndex(GoRouter.of(context).location);

  int _locationToTabIndex(String location) {
    final index =
        tabs.indexWhere((t) => location.startsWith(t.initialLocation));
    // if index not found (-1), return 0
    return index < 0 ? 0 : index;
  }

  // callback used to navigate to the desired tab
  void _onItemTapped(BuildContext context, int tabIndex) {
    if (tabIndex != _currentIndex) {
      // go to the initial location of the selected tab (by index)
      context.go(tabs[tabIndex].initialLocation);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: widget.appBar[_currentIndex],
        body: widget.child,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: context.theme.backround,
          elevation: 2,
          selectedItemColor: context.theme.primary,
          unselectedItemColor: context.theme.backround,
          items: tabs,
          currentIndex: _currentIndex,
          onTap: (index) => _onItemTapped(context, index),
        ),
        floatingActionButton: _currentIndex == 1
            ? FloatingActionButton(
                backgroundColor: context.theme.primary,
                onPressed: () {
                  context.go ("/schedule_your_time");
                },
                child: Icon(
                  Icons.calendar_month,
                  color: context.theme.backround,
                ),
              )
            : null);
  }
}

List<ScaffoldWithNavBarTabItem> tabs = [
  ScaffoldWithNavBarTabItem(
    backgroundColor: Colors.white,
    initialLocation: '/home',
    icon: SvgPicture.asset(
      AppIcons.home,
    ),
    label: 'Home',
  ),
  ScaffoldWithNavBarTabItem(
    backgroundColor: Colors.white,
    initialLocation: '/schedule',
    icon: SvgPicture.asset(AppIcons.schedule),
    label: 'Schedule',
  ),
  ScaffoldWithNavBarTabItem(
    backgroundColor: Colors.white,
    initialLocation: '/chat',
    icon: SvgPicture.asset(AppIcons.chat),
    label: 'chat',
  ),
  ScaffoldWithNavBarTabItem(
    backgroundColor: Colors.white,
    initialLocation: '/history',
    icon: SvgPicture.asset(AppIcons.history),
    label: 'History ',
  ),
  ScaffoldWithNavBarTabItem(
    backgroundColor: Colors.white,
    initialLocation: '/profile',
    icon: SvgPicture.asset(AppIcons.profile),
    label: 'profile',
  ),
];

class ScaffoldWithNavBarTabItem extends BottomNavigationBarItem {
  const ScaffoldWithNavBarTabItem({
    required this.initialLocation,
    required Color backgroundColor,
    required Widget icon,
    String? label,
  }) : super(icon: icon, label: label, backgroundColor: backgroundColor);

  /// The initial location/path
  final String initialLocation;
}
