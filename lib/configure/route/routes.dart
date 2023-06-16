import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kevell_care_dr/pages/schedule/presentation/widgets/schedule_appbar.dart';

import '../../pages/dashborad/presentation/dashborad.dart';
import '../../pages/home_screen/presentation/home_scrre.dart';
import '../../pages/login_scrren/presentation/login_screen.dart';
import '../../pages/patient_chekup_screen/presentation/patient_checkup_screen.dart';
import '../../pages/schedule/presentation/schedule_screen.dart';
import '../../pages/signup_screen/presentation/lsignup_screen.dart';

// This route hierarchy can be represented like this:

// GoRouter
// └─ ShellRoute
//     ├─ GoRoute('/a')
//     │  ├─ GoRoute('details')
//     └─ GoRoute('/b')
//        └─ GoRoute('details')

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

class MianRoute {
  static final router = GoRouter(
    // initialLocation: '/home',
    initialLocation: '/home',
    navigatorKey: _rootNavigatorKey,
    routes: <RouteBase>[
      ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) => Dashboard(
                appBar: const <PreferredSizeWidget?>[
                  null,
                  ScheduleAppBar(),
                  null,
                  null,
                  null
                ],
                child: child,
              ),
          routes: [
            GoRoute(
                name: "Home",
                path: '/home',
                builder: (context, state) => const HomeScreen()),
            GoRoute(
                path: '/schedule',
                builder: (context, state) => const ScheduleScreen()),
            GoRoute(
                path: '/chat',
                builder: (context, state) => const SignupScreen()),
            GoRoute(
                path: '/history',
                builder: (context, state) => const SignupScreen()),
            GoRoute(
                path: '/profile',
                builder: (context, state) => const SignupScreen()),
          ]),
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      GoRoute(
          path: '/patient_checkup',
          builder: (context, state) => const PatientCheckupScreen()),
      GoRoute(
          path: '/signup', builder: (context, state) => const SignupScreen()),
    ],
  );
}
