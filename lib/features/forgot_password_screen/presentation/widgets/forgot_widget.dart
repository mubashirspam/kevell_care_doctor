import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_kevell/core/helper/toast.dart';
import 'package:dr_kevell/core/helper/validater.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/pages/initialize/initialize.dart';
import 'package:dr_kevell/features/signup/presentation/pages/lsignup_screen.dart';

import '../../../../settings/value/constant.dart';
import '../../../../settings/value/secure_storage.dart';
import '../../../widgets/buttons/text_button_widget.dart';
import '../../../widgets/input_field/input_field_widget.dart';
import '../bloc/forgot_password_bloc.dart';

class ForgotPasswordWidget extends StatefulWidget {
  const ForgotPasswordWidget({super.key});

  @override
  State<ForgotPasswordWidget> createState() => _ForgotPasswordWidgetState();
}

class _ForgotPasswordWidgetState extends State<ForgotPasswordWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController emailController =
      TextEditingController(text: "mubashirspam@gmail.com");

  TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = true;

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
              onChanged: (value) {},
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
              onChanged: (value) {},
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
            const SizedBox(height: 30),
            BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
              listener: (context, state) {
                if (state.hasOtpSended) {
                  Toast.showToast(
                    context: context,
                    message:
                        "An OTP has been sent to your email address, ${emailController.text}",
                  );
                  showDialog(
                    context: context,
                    builder: (context) => OtpPopup(
                      email: emailController.text,
                      password: passwordController.text.trim(),
                    ),
                  );
                }
                if (state.isOtpSendError) {
                  Toast.showToast(
                    context: context,
                    color: Colors.red,
                    message: "Kindly check your email address? is wrong",
                  );
                }
              },
              builder: (context, state) {
                return TextButtonWidget(
                  fgColor: context.theme.backround,
                  name: "Send Otp",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<ForgotPasswordBloc>().add(
                            ForgotPasswordEvent.sendOTP(
                              email: emailController.value.text.trim(),
                            ),
                          );
                    }
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

class OtpPopup extends StatefulWidget {
  final String email;
  final String password;
  const OtpPopup({
    super.key,
    required this.email,
    required this.password,
  });

  @override
  State<OtpPopup> createState() => _OtpPopupState();
}

class _OtpPopupState extends State<OtpPopup> {
  TextEditingController otpController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Enter OTP"),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFieldWidget(
              hintText: "Enter otp",
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a password";
                }
                return null; // Return null if validation succeeds
              },
              keyboardType: TextInputType.name,
            ),
            const SizedBox(height: 20),
            BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
              listener: (context, state) {
                if (state.haspasswordChanged) {
                  otpController.clear();
                  Toast.showToast(
                    context: context,
                    message: "Your password has been successfully updated.",
                  );
                  Navigator.of(context).pop(context);
                }
                if (state.isPasswordError) {
                  if (state.haspasswordChanged) {
                    otpController.clear();
                    Toast.showToast(
                      context: context,
                      message:
                          "Please check the OTP as your password cannot be changed.",
                      color: Colors.red,
                    );
                  }
                }
              },
              builder: (context, state) {
                return TextButtonWidget(
                  fgColor: context.theme.backround,
                  name: "Submit",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<ForgotPasswordBloc>().add(
                            ForgotPasswordEvent.setNewPassword(
                                email: widget.email,
                                passwrod: widget.password,
                                otp: otpController.text.trim()),
                          );
                    }
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
