import 'package:flutter/material.dart';
import 'package:kevell_care_dr/configure/assets_manage/images.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';
import 'package:kevell_care_dr/pages/signup_screen/presentation/lsignup_screen.dart';

import '../../../features/login/presentation/login.dart';


class LoginScreen extends StatelessWidget {
  static const routeName = '/login-screen';
  const LoginScreen({super.key});

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
                  Text("Login ",
                      style: Theme.of(context).textTheme.headlineLarge),
                ],
              ),
              const SizedBox(height: 35),
              const LoginWidget(),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () =>  Navigator.of(context).pushNamed(SignupScreen.routeName),
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
