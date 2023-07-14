import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dr_kevell/pages/login_scrren/presentation/login_screen.dart';

class Alert {
  static void showAlert({
    required BuildContext context,
    required String message,
    Color? color,
  }) {
    AlertDialog(
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  LoginScreen.routeName, (route) => false);
            },
            child: const Text("Click hear to login"))
      ],
    );
    showAlert(context: context, message: message);
  }
}
