import 'package:flutter/material.dart';

import '../../configure/color/main_color.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  final Color? primary;
  final Color? secondary;
  final Color? backround;
  final Color? inputFiled;

  final Color? textPrimary;

  // button

  final Color? buttonBackroundEnable;
  final Color? buttonBackroundDisable;
  final Color? buttonBackroundPressed;

  final Color? buttonForgroundEnable;
  final Color? buttonForgroundDisable;
  final Color? buttonForgroundPressed;

  const CustomThemeExtension({
    this.primary,
    this.secondary,
    this.backround,
    this.inputFiled,
    this.textPrimary,

    // button
    this.buttonBackroundEnable,
    this.buttonBackroundDisable,
    this.buttonBackroundPressed,
    this.buttonForgroundEnable,
    this.buttonForgroundDisable,
    this.buttonForgroundPressed,
  });

  static const lightMode = CustomThemeExtension(
    primary: MainConfigColorsLightThem.primary,
    secondary: MainConfigColorsLightThem.secondary,
    backround: MainConfigColorsLightThem.backround,
    inputFiled: MainConfigColorsLightThem.inputFiled,

    textPrimary: MainConfigColorsDarkThem.textPrimary,

    // button

    buttonBackroundEnable: MainConfigColorsLightThem.primary,
    buttonBackroundDisable: MainConfigColorsLightThem.primary,
    buttonBackroundPressed: MainConfigColorsLightThem.primary,

    buttonForgroundEnable: MainConfigColorsLightThem.primary,
    buttonForgroundDisable: MainConfigColorsLightThem.primary,
    buttonForgroundPressed: MainConfigColorsLightThem.primary,
  );

  static const darkMode = CustomThemeExtension(
    primary: MainConfigColorsDarkThem.primary,
    secondary: MainConfigColorsDarkThem.secondary,
    backround: MainConfigColorsDarkThem.backround,
    inputFiled: MainConfigColorsDarkThem.inputFiled,

    // button

    buttonBackroundEnable: MainConfigColorsDarkThem.primary,
    buttonBackroundDisable: MainConfigColorsDarkThem.primary,
    buttonBackroundPressed: MainConfigColorsDarkThem.primary,

    buttonForgroundEnable: MainConfigColorsDarkThem.primary,
    buttonForgroundDisable: MainConfigColorsDarkThem.primary,
    buttonForgroundPressed: MainConfigColorsDarkThem.primary,

    textPrimary: MainConfigColorsDarkThem.textPrimary,
  );

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? primary,
    Color? secondary,
    Color? backround,
    Color? inputFiled,
    Color? textPrimary,

    // button

    Color? buttonBackroundEnable,
    Color? buttonBackroundDisable,
    Color? buttonBackroundPressed,
    Color? buttonForgroundEnable,
    Color? buttonForgroundDisable,
    Color? buttonForgroundPressed,
  }) {
    return CustomThemeExtension(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      backround: backround ?? this.backround,
      inputFiled: inputFiled ?? this.inputFiled,

      textPrimary: textPrimary ?? this.textPrimary,

      // button

      buttonBackroundEnable:
          buttonBackroundEnable ?? this.buttonBackroundEnable,
      buttonBackroundDisable:
          buttonBackroundDisable ?? this.buttonBackroundDisable,
      buttonBackroundPressed:
          buttonBackroundPressed ?? this.buttonBackroundPressed,

      buttonForgroundEnable:
          buttonForgroundEnable ?? this.buttonForgroundEnable,
      buttonForgroundDisable:
          buttonForgroundDisable ?? this.buttonForgroundDisable,
      buttonForgroundPressed:
          buttonForgroundPressed ?? this.buttonForgroundPressed,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      primary: Color.lerp(primary, other.primary, t),
      secondary: Color.lerp(secondary, other.secondary, t),
      backround: Color.lerp(backround, other.backround, t),
      inputFiled: Color.lerp(inputFiled, other.inputFiled, t),

      textPrimary: Color.lerp(textPrimary, other.textPrimary, t),

      // button

      buttonBackroundEnable:
          Color.lerp(buttonBackroundEnable, other.buttonBackroundEnable, t),
      buttonBackroundDisable:
          Color.lerp(buttonBackroundDisable, other.buttonBackroundDisable, t),
      buttonBackroundPressed:
          Color.lerp(buttonBackroundPressed, other.buttonBackroundPressed, t),
      buttonForgroundEnable:
          Color.lerp(buttonForgroundEnable, other.buttonForgroundEnable, t),
      buttonForgroundDisable:
          Color.lerp(buttonForgroundDisable, other.buttonForgroundDisable, t),
      buttonForgroundPressed:
          Color.lerp(buttonForgroundPressed, other.buttonForgroundPressed, t),
    );
  }
}
