import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

class Toast {
  static void showToast({
    required BuildContext context,
    required String message,
    Color? color,
  }) {
    final snackBar = SnackBar(

      content: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: color ?? Theme.of(context).primaryColor,
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
        label: 'Dismiss',
        disabledTextColor: Colors.white,
        textColor: context.theme.backround,
        onPressed: () {
          // Perform any action you want when the Toast is dismissed
        },
      ),
    );
    scaffoldMessengerKey.currentState?.removeCurrentSnackBar();
scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
  }
}
