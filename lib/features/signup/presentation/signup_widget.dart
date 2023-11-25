import 'dart:developer';

import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_kevell/features/signup/presentation/bloc/signup_bloc.dart';
import 'package:dr_kevell/features/widgets/input_field/input_field_widget.dart';

import '../../../core/helper/validater.dart';
import '../../../pages/login_scrren/presentation/login_screen.dart';
import '../../widgets/buttons/text_button_widget.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  bool isButtonDisabled = true;

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
            Text("Full Name", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              textEditingController: nameController,
              onChanged: (value) {
                validateForm();
              },
              hintText: "Name",
              keyboardType: TextInputType.name,
              validate: (name) {
                if (name == null || name.isEmpty) {
                  return "Please enter an Name";
                }
                return null; // Return null if validation succeeds
              },
            ),
            const SizedBox(height: 20),
            Text("Mobile", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              textEditingController: mobileController,
              onChanged: (value) {
                validateForm();
              },
              hintText: "+91",
              keyboardType: TextInputType.number,
              validate: (number) {
                if (number == null || number.isEmpty) {
                  return "Please enter an mobile number";
                } else if (!regexMobile.hasMatch(number)) {
                  return "Please enter a valid mobile number";
                }
                return null; // Return null if validation succeeds
              },
            ),
            const SizedBox(height: 20),
            Text("Password (min. 8 characters)",
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              obscureText: true,
              textEditingController: passwordController,
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
            Text("Confirm Password",
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              obscureText: true,
              textEditingController: confirmPasswordController,
              onChanged: (value) {
                validateForm();
              },
              hintText: "Choose a password",
              keyboardType: TextInputType.visiblePassword,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a password";
                } else if (value != passwordController.value.text) {
                  return "Password must same as above";
                }
                return null; // Return null if validation succeeds
              },
            ),
            const SizedBox(height: 20),
            BlocConsumer<SignupBloc, SignupState>(
              listener: (context, state) {
                // if (!state.isLoading && state.isError) {
                //   Toast.showToast(
                //     context: context,
                //     message: state.message ?? "",
                //   );
                // }
                if (!state.isLoading && state.hasValidationData) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Colors.white,
                      title: Text(
                        "Success",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                      ),
                      content: Text(
                        "Congratulations! Your registration has unfurled its wings of success. Kindly take a triumphant step back into our realm by logging in once more.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      actions: [
                        Center(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: context.theme.primary,
                                  foregroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100))),
                              onPressed: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    LoginScreen.routeName, (route) => false);
                              },
                              child: const Text(
                                "Login",
                              )),
                        )
                      ],
                    ),
                  );
                }
              },
              builder: (context, state) {
                return TextButtonWidget(
                  onPressed: isButtonDisabled
                      ? null
                      : () {
                          context.read<SignupBloc>().add(
                                SignupEvent.signup(
                                  fullName: nameController.value.text,
                                  phone: mobileController.value.text,
                                  email: emailController.value.text,
                                  password:
                                      confirmPasswordController.value.text,
                                ),
                              );
                        },
                  name: "Sign up",
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
