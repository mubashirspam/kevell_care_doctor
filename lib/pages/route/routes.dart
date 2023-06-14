
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../login_scrren/presentation/login_screen.dart';
import '../signup_screen/presentation/lsignup_screen.dart';


class MianRoute {




  final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'signup',
          builder: (BuildContext context, GoRouterState state) {
            return const SignupScreen();
          },
        ),
      ],
    ),
  ],
);
}