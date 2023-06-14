import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

import '../../widgets/buttons/text_button_widget.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Email address",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            cursorColor: context.theme.backround,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            "Password (min. 8 characters)",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            cursorColor: context.theme.primary,
            obscureText: true,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              suffix: Icon(
                Icons.visibility,
                size: 16,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Forgot your password? ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          TextButtonWidget(
            // bgColor: context.theme.backround,
            fgColor: context.theme.backround,
            name: "Login",
            onPressed: () {},
            isLoading: false,
          ),
        ],
      ),
    );
  }
}
