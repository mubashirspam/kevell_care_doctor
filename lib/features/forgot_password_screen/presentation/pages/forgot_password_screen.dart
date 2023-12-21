import 'package:flutter/material.dart';
import 'package:dr_kevell/settings/assets_manage/images.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/signup/presentation/pages/lsignup_screen.dart';

import '../widgets/forgot_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const routeName = '/forgot-password-screen';
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  key: scaffoldMessengerKey,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Image(
                    height: 45,
                    width: 45,
                    image: AssetImage(AppImg.logo),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("New password ",
                      style: Theme.of(context).textTheme.headlineLarge),
                ],
              ),
              const SizedBox(height: 35),
              const ForgotPasswordWidget(),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () =>
                    Navigator.of(context).pushNamed(SignupScreen.routeName),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                    text: "Don’t have an account yet? ",
                    children: [
                      TextSpan(
                        text: "Sign up.",
                        style: TextStyle(
                            color: context.theme.primary,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
