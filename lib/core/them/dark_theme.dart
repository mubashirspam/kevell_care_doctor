import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kevell_care_dr/configure/color/maian_color.dart';

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
  );
}
