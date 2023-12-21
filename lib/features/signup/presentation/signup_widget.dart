import 'dart:developer';

import 'package:dr_kevell/core/helper/toast.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_kevell/features/signup/presentation/bloc/signup_bloc.dart';
import 'package:dr_kevell/features/widgets/input_field/input_field_widget.dart';

import '../../../core/helper/validater.dart';
import '../../login/presentation/pages/login_screen.dart';
import '../../widgets/buttons/text_button_widget.dart';
import '../../widgets/input_field/drop_down.dart';
import '../domain/entities/signup_payload.dart';

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
  TextEditingController registerIdController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  String selectedLocation = "Please select location";
  String selectedSpecialist = "Please select specialization";

  List<String> locations = [
    "Madurai",
    "Chennai",
    "Dindigul",
    "Ariyalur",
    "Coimbatore",
    "Chengalpattu",
    "Erode",
    "Dharmapuri",
    "Kallakurichi",
    "Kanchipuram",
    "Karur",
    "Krishnagiri",
    "Kanyakumari",
    "Mayiladuthurai",
    "Nagapattinam",
    "Namakkal",
    "Nilgiris",
    "Perambalur",
    "Pudukkottai",
    "Ranipet",
    "Salem",
    "Sivagangai",
    "Tenkasi",
    "Thanjavur",
    "Theni",
    "Thoothukudi",
    "Tiruchirappalli",
    "Tirunelveli",
    "Tirupattur",
    "Tiruppur",
    "Tiruvallur",
    "Tiruvannamalai",
    "Tiruvarur",
    "Vellore",
    "Viluppuram",
    "Ramanathapuram",
    "Cuddalore",
    "Virudhunagar",
  ];

  List<String> specialists = [
    "Dentist",
    "Gynecologist/Obstetrician",
    "General Physician",
    "Dermatologist",
    "Homoeopath",
    "Ayurveda",
    "Ear-Nose-Throat (ENT) Specialist",
  ];

  void _showSelectionBottomSheet(
      BuildContext context, List<String> list, bool isLocation) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 250,
          child: CupertinoPicker(
            itemExtent: 32,
            onSelectedItemChanged: (index) {
              if (isLocation) {
                setState(() {
                  selectedLocation = list[index];
                });
              } else {
                setState(() {
                  selectedSpecialist = list[index];
                });
              }
            },
            children: list.map((v) {
              return Text(v);
            }).toList(),
          ),
        );
      },
    );
  }

  // void signup() {
  //   context.read<SignupBloc>().add(
  //         SignupEvent.signup(
  //           payload: SingupPayload(
  //               address: "ss",
  //               dob: DateTime.now(),
  //               email: "mwqwwu@wwgml.com",
  //               location: "Chengalpattu",
  //               mobile: "3ww2232q23",
  //               password: "11111111",
  //               registredId: "11111111",
  //               specialist: "Dentist",
  //               username: "bdjbjd"),
  //         ),
  //       );
  // }

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
            Text("Full Name", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              textEditingController: nameController,
              onChanged: (value) {},
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
            Text("Registration id",
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              textEditingController: registerIdController,
              onChanged: (value) {},
              hintText: "registration id",
              keyboardType: TextInputType.name,
              validate: (number) {
                if (number == null || number.isEmpty) {
                  return "Please enter an Registration id";
                }
                return null; // Return null if validation succeeds
              },
            ),
            const SizedBox(height: 20),
            Text("Adress", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              textEditingController: addressController,
              onChanged: (value) {},
              hintText: "Adress",
              keyboardType: TextInputType.name,
              validate: (number) {
                if (number == null || number.isEmpty) {
                  return "Please enter an Adress";
                }
                return null; // Return null if validation succeeds
              },
            ),
            const SizedBox(height: 10),
            Text("Mobile", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              textEditingController: mobileController,
              onChanged: (value) {},
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
            const SizedBox(height: 10),
            Text("Select place", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                _showSelectionBottomSheet(context, locations, true);
              },
              child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: context.theme.inputFiled),
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(selectedLocation,
                          style: Theme.of(context).textTheme.titleLarge),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  )),
            ),
            const SizedBox(height: 10),
            Text("Select specilization",
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                _showSelectionBottomSheet(context, specialists, false);
              },
              child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: context.theme.inputFiled),
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(selectedSpecialist,
                          style: Theme.of(context).textTheme.titleLarge),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  )),
            ),
            const SizedBox(height: 20),
            Text("Password (min. 8 characters)",
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              obscureText: true,
              textEditingController: passwordController,
              onChanged: (value) {},
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
              onChanged: (value) {},
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
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
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (selectedLocation == "Please select location") {
                        return Toast.showToast(
                            context: context,
                            message: "Please select an a location",
                            color: Colors.red);
                      } else if (selectedSpecialist ==
                          "Please select specialization") {
                        return Toast.showToast(
                            context: context,
                            message: "Please select an a specialization",
                            color: Colors.red);
                      } else {
                        if (state.isLoading) {
                          return;
                        }
                        context.read<SignupBloc>().add(
                              SignupEvent.signup(
                                payload: SingupPayload(
                                  address: addressController.value.text,
                                  dob: DateTime.now(),
                                  email: emailController.value.text,
                                  location: selectedLocation,
                                  mobile: mobileController.value.text,
                                  password:
                                      confirmPasswordController.value.text,
                                  registredId: registerIdController.text,
                                  specialist: selectedSpecialist,
                                  username: nameController.value.text,
                                ),
                              ),
                            );
                      }
                    }
                    // signup();
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
