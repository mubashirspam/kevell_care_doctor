import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kevell_care_dr/core/helper/toast.dart';
import 'package:kevell_care_dr/core/helper/validater.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';
import 'package:kevell_care_dr/pages/initialize/initialize.dart';

import '../../../configure/value/constant.dart';
import '../../../configure/value/secure_storage.dart';
import '../../widgets/buttons/text_button_widget.dart';
import '../../widgets/input_field/input_field_widget.dart';
import 'bloc/login_bloc.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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

  void isPasswordVisiblity() {
    setState(() => isPasswordVisible = !isPasswordVisible);
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
              textEditingController: emailController,
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
              textEditingController: passwordController,
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
            BlocConsumer<LoginBloc, LoginState>(
              listener: (context, state) {
                if (!state.isLoading && state.isError) {
                  Toast.showToast(
                    context: context,
                    message: state.message,
                  );
                }
                if (!state.isLoading && state.hasValidationData) {
                  addTokenToSS(mailsecureStoreKey,
                      state.loginDetails!.data!.emailid.toString());

                  addTokenToSS(drIdsecureStoreKey,
                      state.loginDetails!.data!.id.toString());

                  addTokenToSS(secureStoreKey,
                      state.loginDetails!.data!.token.toString());

                  log("Token : ${state.loginDetails!.data?.token}");
                  log("id : ${state.loginDetails!.data?.id}");
                  log("mail : ${state.loginDetails!.data?.emailid}");

                  Toast.showToast(
                    context: context,
                    message: state.message,
                  );

                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const Initialize(),
                    ),
                    (route) => false,
                  );
                }
              },
              builder: (context, state) {
                return TextButtonWidget(
                  // bgColor: context.theme.backround,
                  fgColor: context.theme.backround,
                  name: "Login",
                  onPressed: isButtonDisabled
                      ? null
                      : () {
                          context.read<LoginBloc>().add(
                                LoginEvent.login(
                                  email: emailController.value.text,
                                  password: passwordController.value.text,
                                ),
                              );
                        },
                  isLoading: state.isLoading,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
