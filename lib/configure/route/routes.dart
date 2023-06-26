import 'package:flutter/material.dart';
import 'package:kevell_care_dr/pages/patien_checkup/presentation/patient_checkup_screen.dart';
import 'package:kevell_care_dr/pages/profile/presentation/my_profile_screen.dart';
import 'package:kevell_care_dr/pages/profile/presentation/profile_screen.dart';
import '../../pages/chat/presentation/chating_screen.dart';
import '../../pages/prescription/presentation/prescription_screen.dart';
import '../../pages/dashborad/presentation/dashborad.dart';
import '../../pages/login_scrren/presentation/login_screen.dart';
import '../../pages/schedule/presentation/schedule_your_time.dart';
import '../../pages/signup_screen/presentation/lsignup_screen.dart';

// This route hierarchy can be represented like this:

// // GoRouter
// // └─ ShellRoute
// //     ├─ GoRoute('/a')
// //     │  ├─ GoRoute('details')
// //     └─ GoRoute('/b')
// //        └─ GoRoute('details')

// final _rootNavigatorKey = GlobalKey<NavigatorState>();
// final _shellNavigatorKey = GlobalKey<NavigatorState>();

// class MianRoute {
//   static final router = GoRouter(
//     initialLocation: '/login',
//     // initialLocation: '/schedule_your_time',
//     navigatorKey: _rootNavigatorKey,
//     routes: <RouteBase>[
//       ShellRoute(
//           navigatorKey: _shellNavigatorKey,
//           builder: (context, state, child) => Dashboard(
//                 appBar: const <PreferredSizeWidget?>[
//                   null,
//                   ScheduleAppBar(),
//                   null,
//                   null,
//                   null
//                 ],
//                 child: child,
//               ),
//           routes: [
//             GoRoute(
//                 name: "Home",
//                 path: '/home',
//                 builder: (context, state) => const HomeScreen()),
//             GoRoute(
//                 path: '/schedule',
//                 builder: (context, state) => const ScheduleScreen()),
//             GoRoute(
//                 path: '/chat',
//                 builder: (context, state) => const SignupScreen()),
//             GoRoute(
//                 path: '/history',
//                 builder: (context, state) => const SignupScreen()),
//             GoRoute(
//                 path: '/profile',
//                 builder: (context, state) => const SignupScreen()),
// // hhhhhhhhhhh
//           ]),
//       GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
//       GoRoute(
//           path: '/patient_checkup',
//           builder: (context, state) => const PatientCheckupScreen()),
//       GoRoute(
//           path: '/signup', builder: (context, state) => const SignupScreen()),
//       GoRoute(
//           name: "schedule_your_time",
//           path: '/schedule_your_time',
//           builder: (context, state) => const ScheduleYourTime()),
//     ],
//   );
// }

final Map<String, Widget Function(BuildContext)> route = {
  LoginScreen.routeName: (ctx) => const LoginScreen(),
  SignupScreen.routeName: (ctx) => const SignupScreen(),
  Dashboard.routeName: (ctx) => const Dashboard(),
  ScheduleYourTime.routeName: (ctx) => const ScheduleYourTime(),
  ProfileScreen.routeName: (ctx) => const ProfileScreen(),
  MyProfileScreen.routeName: (ctx) => const MyProfileScreen(),
  PrescriptionScreen.routeName: (ctx) => const PrescriptionScreen(),
  ChatingScreen.routeName: (ctx) => const ChatingScreen(),
  PatientCheckupScreen.routeName: (ctx) => const PatientCheckupScreen(),
};
