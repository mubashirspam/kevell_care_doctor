import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

class TextButtonWidget extends StatelessWidget {
  final String name;
  final VoidCallback? onPressed;
  final double boderRadius;
  final Color? bgColor;
  final Color? bgInColor;
  final Color? fgColor;
  final Color? fgIColor;
  final bool isLoading;

  const TextButtonWidget({
    super.key,
    this.boderRadius = 12,
    required this.name,
    required this.onPressed,
    this.bgColor,
    this.bgInColor,
    this.fgColor,
    this.fgIColor,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.resolveWith<Size>(
            (states) => const Size(double.maxFinite, 50)),
        padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
          (Set<MaterialState> states) => const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 25,
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return bgInColor ?? context.theme.buttonBackroundPressed!;
          }
          return bgColor ?? context.theme.buttonBackroundEnable!;
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return fgIColor ?? context.theme.buttonForgroundPressed!;
          }
          return fgColor ?? context.theme.buttonForgroundEnable!;
        }),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(boderRadius),
          );
        }),
        elevation: MaterialStateProperty.resolveWith((states) => 0),
        animationDuration: const Duration(milliseconds: 30),
      ),
      onPressed: onPressed,
      child: isLoading
          ? SizedBox(
              height: 20,
              width: 20,
              child: Center(
                child: CircularProgressIndicator(
                  backgroundColor:
                      bgColor ?? context.theme.buttonBackroundEnable,
                  color: fgColor ?? context.theme.buttonForgroundEnable,
                ),
              ),
            )
          : Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.w800),
            ),
    );
  }
}
