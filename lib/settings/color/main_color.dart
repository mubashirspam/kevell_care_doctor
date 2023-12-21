import 'dart:math';

import 'package:flutter/material.dart';

class MainConfigColorsLightThem {
  MainConfigColorsLightThem._();

  static const Color primary = Color(0xFF0095F7);
  static const Color secondary = Color(0xFFBDE5FF);

  static const Color danger = Colors.red;
  static const Color success = Colors.green;
  static const Color warning = Color(0xFFE3DEF9);
  static const Color info = Color(0xFFFFFFFF);

  static const Color backround = Color(0xFFFFFFFF);
  static const Color inputFiled = Color(0xFFEFEFEF);
  static const Color canvas = Color(0xFFEEB14B);

  static const Color textPrimary = Color(0xFF1E1F20);
  static const Color textSecondary = Color(0xFF666666);
  static const Color textGrey = Color(0xFF808080);
  static const Color textWhite = Color(0xFFFFFFFF);

  static const Color textThemePrimary = Color(0xFF0095F7);
}

class MainConfigColorsDarkThem {
  MainConfigColorsDarkThem._();

  static const Color primary = Color(0xFF0095F7);
  static const Color secondary = Color(0xFFBDE5FF);

  static const Color danger = Colors.red;
  static const Color success = Colors.green;
  static const Color warning = Color(0xFFE3DEF9);
  static const Color info = Color(0xFFFFFFFF);

  // static const Color backround = Color(0xFFFFFFFF);
  static const Color backround = Color(0xFF231F20);
  static const Color inputFiled = Color(0xFFEFEFEF);
  static const Color canvas = Color(0xFFEEB14B);

  static const Color textPrimary = Color(0xFFffffff);
  static const Color textSecondary = Color(0xFFEFEFEF);
  static const Color textGrey = Color(0xFF808080);
  static const Color textWhite = Color(0x00000000);

  static const Color textThemePrimary = Color(0xFF0095F7);
}


Color generateLightColor() {
  final Random random = Random();
  final int red = 200 + random.nextInt(55);
  final int green = 200 + random.nextInt(55);
  final int blue = 200 + random.nextInt(55);

  return Color.fromRGBO(red, green, blue, 1.0);
}