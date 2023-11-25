import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dr_kevell/settings/color/main_color.dart';

import 'custom_theme_extension.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light(useMaterial3: false);
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
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: MainConfigColorsLightThem.primary,
      foregroundColor: MainConfigColorsLightThem.backround,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 16,
        color: MainConfigColorsLightThem.textPrimary,
      ),
      headlineLarge: TextStyle(
        fontSize: 28,
        color: MainConfigColorsLightThem.textPrimary,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        fontSize: 18,
        color: MainConfigColorsLightThem.textPrimary,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
        fontSize: 14,
        color: MainConfigColorsLightThem.textPrimary,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
          fontSize: 14,
          color: MainConfigColorsLightThem.textSecondary,
          fontWeight: FontWeight.bold),
      titleMedium: TextStyle(
          fontSize: 14,
          color: MainConfigColorsLightThem.textSecondary,
          fontWeight: FontWeight.normal),
      titleSmall: TextStyle(
          fontSize: 12,
          color: MainConfigColorsLightThem.textSecondary,
          fontWeight: FontWeight.normal),
    ),
    datePickerTheme: DatePickerThemeData(
      backgroundColor: MainConfigColorsLightThem.secondary,
      dayForegroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        // If the button is pressed, return green, otherwise blue
        if (states.contains(MaterialState.selected)) {
          return Colors.white;
        }
        if (states.contains(MaterialState.disabled)) {
          return MainConfigColorsLightThem.textGrey.withOpacity(0.3);
        }
        return MainConfigColorsLightThem.textPrimary;
      }),
      dayBackgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.selected)) {
          return MainConfigColorsLightThem.primary;
        }
        return Colors.white;
      }),
      surfaceTintColor: Colors.red,
      weekdayStyle: const TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      todayForegroundColor: const MaterialStatePropertyAll<Color>(
          MainConfigColorsLightThem.primary),
      todayBackgroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
      todayBorder: const BorderSide(color: MainConfigColorsLightThem.primary),
      dayStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      headerForegroundColor: Colors.black,
      yearStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          color: MainConfigColorsLightThem.textPrimary),
      headerHelpStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      headerHeadlineStyle: const TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
    ),
  );
}
