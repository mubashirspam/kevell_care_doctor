import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kevell_care_dr/core/helper/validater.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

import '../../widgets/buttons/text_button_widget.dart';
import '../../widgets/input_field/input_field_widget.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isButtonDisabled = true;
  bool isPasswordVisible = true;

  void validateForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid
      setState(() {
        isButtonDisabled = false; // Enable the button

        log(isButtonDisabled.toString());
      });
    } else {
      // Form is invalid
      setState(() {
        isButtonDisabled = true; // Disable the button
        log(isButtonDisabled.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Email address",
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              onChanged: (value) {
                validateForm();
              },
              hintText: "What’s your email address?",
              keyboardType: TextInputType.emailAddress,
              validate: (email) {
                if (email == null || email.isEmpty) {
                  return "Please enter an email address";
                } else if (!regex.hasMatch(email)) {
                  return "Please enter a valid email address";
                }
                return null; // Return null if validation succeeds
              },
            ),
            const SizedBox(height: 20),
            Text("Password (min. 8 characters)",
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              obscureText: isPasswordVisible,
              suffixIcon: GestureDetector(
                onTap: () =>
                    setState(() => isPasswordVisible = !isPasswordVisible),
                child: Icon(
                  isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                  color: isPasswordVisible
                      ? context.theme.textGrey
                      : context.theme.textPrimary,
                ),
              ),
              onChanged: (value) {
                validateForm();
              },
              hintText: "Choose a password",
              keyboardType: TextInputType.visiblePassword,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a password";
                } else if (value.length < 8) {
                  return "Password must contain at least 8 characters";
                }
                return null; // Return null if validation succeeds
              },
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => context.go('/signup'),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                  text: "Forgot your password? ",
                  children: [
                    TextSpan(
                      text: " Request a new one.",
                      style: TextStyle(
                          color: context.theme.primary,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            TextButtonWidget(
              // bgColor: context.theme.backround,
              fgColor: context.theme.backround,
              name: "Login",
              onPressed: isButtonDisabled ? null : () {},
              isLoading: false,
            ),
          ],
        ),
      ),
    );
  }
}
