import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

import '../../../core/helper/validater.dart';
import '../../widgets/buttons/text_button_widget.dart';
import '../../widgets/input_field/input_field_widget.dart';

class EditMyProfile extends StatefulWidget {
  const EditMyProfile({super.key});

  @override
  State<EditMyProfile> createState() => _EditMyProfileState();
}

class _EditMyProfileState extends State<EditMyProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nameController =
      TextEditingController(text: "Mubashir");
  TextEditingController mobileController =
      TextEditingController(text: "9562229979");
  TextEditingController passwordController =
      TextEditingController(text: "24 Jan 1988");
  TextEditingController confirmPasswordController =
      TextEditingController(text: "24, Maruthu Pandiyar Street, Madurai - 20");

  bool isButtonDisabled = true;

  void validateForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid
      setState(() {
        isButtonDisabled = false; // Enable the button
      });
    } else {
      // Form is invalid
      setState(() {
        isButtonDisabled = true; // Disable the button
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: context.theme.backround),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Edit Profile",
                    style: Theme.of(context).textTheme.headlineLarge!),
                const SizedBox(
                  height: 25,
                ),
                Text("Full Name",
                    style: Theme.of(context).textTheme.titleLarge),
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
                Text("Date of birth",
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 10),
                TextFieldWidget(
                  textEditingController: passwordController,
                  onChanged: (value) {
                    validateForm();
                  },
                  hintText: "Dob",
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
                Text("Address", style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 10),
                TextFieldWidget(
                  textEditingController: confirmPasswordController,
                  onChanged: (value) {
                    validateForm();
                  },
                  hintText: "Adress",
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
                SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButtonWidget(
                          fgColor: context.theme.primary,
                          bgColor: context.theme.secondary,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          name: "Cancel",
                          isLoading: false,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextButtonWidget(
                          onPressed: () {},
                          name: "Update",
                          isLoading: false,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
