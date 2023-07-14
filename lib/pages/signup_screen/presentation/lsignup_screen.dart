import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/pages/login_scrren/presentation/login_screen.dart';

import '../../../configure/assets_manage/images.dart';
import '../../../features/signup/presentation/signup_widget.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = '/signup-screen';
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Text("Signup ",
                      style: Theme.of(context).textTheme.headlineLarge),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SignUpWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                      LoginScreen.routeName, (route) => false),
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                      text: "already have an account? ",
                      children: [
                        TextSpan(
                          text: "Login ",
                          style: TextStyle(
                              color: context.theme.primary,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
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
