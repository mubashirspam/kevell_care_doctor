import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/pages/login_scrren/presentation/login_screen.dart';

import '../../../../settings/assets_manage/images.dart';
import '../signup_widget.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = '/signup-screen';
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  key: scaffoldMessengerKey,
      appBar: AppBar(
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Image(
            height: 40,
            width: 40,
            image: AssetImage(AppImg.logo),
          ),
        ),
        title:
            Text("Signup ", style: Theme.of(context).textTheme.headlineLarge),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
