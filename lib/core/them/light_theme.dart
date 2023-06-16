import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kevell_care_dr/configure/color/maian_color.dart';

import 'custom_theme_extension.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: const ColorScheme.light(
      background: MainConfigColorsLightThem.backround,
    ),
    scaffoldBackgroundColor: MainConfigColorsLightThem.backround,
    extensions: [CustomThemeExtension.lightMode],
    appBarTheme: const AppBarTheme(
      backgroundColor: MainConfigColorsLightThem.backround,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: Colors.white,
          width: 2,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: MainConfigColorsLightThem.primary,
        foregroundColor: MainConfigColorsLightThem.backround,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 16,
        color: MainConfigColorsLightThem.textPrimary,
      ),
      headlineLarge: TextStyle(
        fontSize: 24,
        color: MainConfigColorsLightThem.textPrimary,
        fontWeight: FontWeight.w600
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        color: MainConfigColorsLightThem.textPrimary,
        fontWeight: FontWeight.w600
      ),
    ),
  );
}
