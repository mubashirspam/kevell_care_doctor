import 'package:flutter/material.dart';

import '../../settings/color/main_color.dart';

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
  final Color? textSecondary;
  final Color? textGrey;

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

    // button
    this.buttonBackroundEnable,
    this.buttonBackroundDisable,
    this.buttonBackroundPressed,
    this.buttonForgroundEnable,
    this.buttonForgroundDisable,
    this.buttonForgroundPressed,

    // text

    this.textPrimary,
    this.textGrey,
    this.textSecondary,
  });

  static const lightMode = CustomThemeExtension(
    primary: MainConfigColorsLightThem.primary,
    secondary: MainConfigColorsLightThem.secondary,
    backround: MainConfigColorsLightThem.backround,
    inputFiled: MainConfigColorsLightThem.inputFiled,

//text
    textPrimary: MainConfigColorsLightThem.textPrimary,
    textGrey: MainConfigColorsLightThem.textGrey,
    textSecondary: MainConfigColorsLightThem.textSecondary,

    // button

    buttonBackroundEnable: MainConfigColorsLightThem.primary,
    buttonBackroundDisable: MainConfigColorsLightThem.secondary,
    buttonBackroundPressed: MainConfigColorsLightThem.secondary,

    buttonForgroundEnable: MainConfigColorsLightThem.textWhite,
    buttonForgroundDisable: MainConfigColorsLightThem.textThemePrimary,
    buttonForgroundPressed: MainConfigColorsLightThem.textThemePrimary,
  );

  static const darkMode = CustomThemeExtension(
    primary: MainConfigColorsDarkThem.primary,
    secondary: MainConfigColorsDarkThem.secondary,
    backround: MainConfigColorsDarkThem.backround,
    inputFiled: MainConfigColorsDarkThem.inputFiled,

    // button

    buttonBackroundEnable: MainConfigColorsDarkThem.primary,
    buttonBackroundDisable: MainConfigColorsDarkThem.secondary,
    buttonBackroundPressed: MainConfigColorsDarkThem.secondary,

    buttonForgroundEnable: MainConfigColorsDarkThem.textWhite,
    buttonForgroundDisable: MainConfigColorsDarkThem.textThemePrimary,
    buttonForgroundPressed: MainConfigColorsDarkThem.textThemePrimary,

    textPrimary: MainConfigColorsDarkThem.textPrimary,
    textGrey: MainConfigColorsDarkThem.textGrey,
    textSecondary: MainConfigColorsDarkThem.textSecondary,
  );

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? primary,
    Color? secondary,
    Color? backround,
    Color? inputFiled,

    // text

    Color? textPrimary,
    Color? textSecondary,
    Color? textGrey,

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

      // text

      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textGrey: textGrey ?? this.textGrey,

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

// text
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t),
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t),
      textGrey: Color.lerp(textGrey, other.textGrey, t),

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
