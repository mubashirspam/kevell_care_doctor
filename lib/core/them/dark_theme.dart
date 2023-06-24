
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kevell_care_dr/configure/color/main_color.dart';

import 'custom_theme_extension.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    // backgroundColor: AppColor.backgroundDark,
    colorScheme: const ColorScheme.dark(
      background: MainConfigColorsDarkThem.backround,
    ),
    scaffoldBackgroundColor: MainConfigColorsDarkThem.backround,
    extensions: [CustomThemeExtension.darkMode],
    appBarTheme: const AppBarTheme(
      backgroundColor: MainConfigColorsDarkThem.backround,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: MainConfigColorsDarkThem.primary,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: MainConfigColorsDarkThem.primary,
        statusBarIconBrightness: Brightness.light,
      ),
      iconTheme: IconThemeData(
        color: MainConfigColorsDarkThem.primary,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: MainConfigColorsDarkThem.primary,
      foregroundColor: MainConfigColorsDarkThem.backround,
    ),
    tabBarTheme: const TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: MainConfigColorsDarkThem.primary,
          width: 2,
        ),
      ),
      unselectedLabelColor: MainConfigColorsDarkThem.backround,
      labelColor: MainConfigColorsDarkThem.backround,
    ),
   textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 16,
        color: MainConfigColorsDarkThem.textPrimary,
      ),
      headlineLarge: TextStyle(
        fontSize: 28,
        color: MainConfigColorsDarkThem.textPrimary,
        fontWeight: FontWeight.bold,
      ),
       headlineMedium: TextStyle(
        fontSize: 18,
        color: MainConfigColorsDarkThem.textPrimary,
        fontWeight: FontWeight.bold,
      ),
       headlineSmall: TextStyle(
        fontSize: 14,
        color: MainConfigColorsDarkThem.textPrimary,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
          fontSize: 14,
          color: MainConfigColorsDarkThem.textSecondary,
          fontWeight: FontWeight.bold),
           titleMedium: TextStyle(
          fontSize: 14,
          color: MainConfigColorsDarkThem.textSecondary,
          fontWeight: FontWeight.normal),
       
    ),
    
  );
}
