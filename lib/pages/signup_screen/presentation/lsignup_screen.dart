import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

import '../../../features/signup/presentation/signup_widget.dart';



class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    "Signup ",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              const SignUpWidget(),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: GestureDetector(
                  onTap: () => context.go('/'),
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
