import 'package:flutter/material.dart';
import 'package:kevell_care_dr/pages/route/routes.dart';
import 'core/them/dark_theme.dart';
import 'core/them/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      routerConfig: MianRoute().router,
    );
  }
}
