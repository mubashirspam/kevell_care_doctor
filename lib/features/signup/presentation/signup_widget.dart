import 'package:dr_kevell/core/helper/date.dart';
import 'package:dr_kevell/core/helper/toast.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_kevell/features/signup/presentation/bloc/signup_bloc.dart';
import 'package:dr_kevell/features/widgets/input_field/input_field_widget.dart';

import '../../../core/helper/date_formater.dart';
import '../../../core/helper/date_validater.dart';
import '../../../core/helper/validater.dart';
import '../../login/presentation/pages/login_screen.dart';
import '../../widgets/buttons/text_button_widget.dart';

import '../../widgets/calender/calnder.dart';
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

  TextEditingController dobController = TextEditingController();

  TextEditingController streetController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController zipController = TextEditingController();

  String selectedLocation = "Please select location";
  DateTime selectedDob = DateTime.now();
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
  String? selectedGender = '';

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

  // int calculateAge(DateTime birthDate) {
  //   DateTime currentDate = DateTime.now();
  //   int age = currentDate.year - birthDate.year;

  //   if (currentDate.month < birthDate.month ||
  //       (currentDate.month == birthDate.month &&
  //           currentDate.day < birthDate.day)) {
  //     age--;
  //   }

  //   return age;
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
            const SizedBox(height: 10),
            Text("Date of Birth",
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              textEditingController: dobController,
              readOnly: true,
              hintText: "12/12/2023",
              inputFormatters: [DateInputFormatter()],
              validate: DateValidator.validateDate,
              keyboardType: TextInputType.datetime,
              suffixIcon: GestureDetector(
                onTap: () => showDialog(
                    context: context,
                    builder: (context) => CustomDatePickerDialog(
                          initialDate:
                              DateTime.now().subtract(const Duration(days: 18 * 365)),
                          firstDate: DateTime(1920, 9, 7, 17, 30),
                          lastDate:
                              DateTime.now().subtract(const Duration(days: 18 * 365)),
                          onDateTimeChanged: (onDateTimeChanged) {
                            setState(() {
                              selectedDob = onDateTimeChanged;
                              dobController = TextEditingController(
                                  text:
                                      dateFormatToddmmyyyy(onDateTimeChanged));
                              Navigator.of(context).pop();
                            });

                            // Navigator.of(context).pop();
                          },
                        )),
                child: Icon(
                  Icons.calendar_month,
                  color: context.theme.primary,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text("Gender", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Radio(
                  value: 'male',
                  activeColor: context.theme.primary,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                ),
                Text(
                  'Male',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(width: 20), // Adjust the spacing between radio buttons
                Radio(
                  value: 'female',
                  groupValue: selectedGender,
                  activeColor: context.theme.primary,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                ),
                Text(
                  'Female',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text("Street", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              textEditingController: streetController,
              onChanged: (value) {},
              hintText: "Street",
              keyboardType: TextInputType.name,
              validate: (number) {
                if (number == null || number.isEmpty) {
                  return "Please enter an Street";
                }
                return null; // Return null if validation succeeds
              },
            ),
            const SizedBox(height: 10),
            Text("City", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              textEditingController: cityController,
              onChanged: (value) {},
              hintText: "City",
              keyboardType: TextInputType.name,
              validate: (number) {
                if (number == null || number.isEmpty) {
                  return "Please enter an City";
                }
                return null; // Return null if validation succeeds
              },
            ),
            const SizedBox(height: 10),
            Text("State", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              textEditingController: stateController,
              onChanged: (value) {},
              hintText: "State",
              keyboardType: TextInputType.name,
              validate: (number) {
                if (number == null || number.isEmpty) {
                  return "Please enter an State";
                }
                return null; // Return null if validation succeeds
              },
            ),
            const SizedBox(height: 10),
            Text("District", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              textEditingController: districtController,
              onChanged: (value) {},
              hintText: "District",
              keyboardType: TextInputType.name,
              validate: (number) {
                if (number == null || number.isEmpty) {
                  return "Please enter an District";
                }
                return null; // Return null if validation succeeds
              },
            ),
            const SizedBox(height: 10),
            Text("Zip Code", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            TextFieldWidget(
              textEditingController: zipController,
              onChanged: (value) {},
              hintText: "Zip Code",
              keyboardType: TextInputType.number,
              validate: (number) {
                if (number == null || number.isEmpty) {
                  return "Please enter an zipcode";
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
                  padding: const EdgeInsets.all(15),
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
                  padding: const EdgeInsets.all(15),
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
                                  dob: selectedDob,
                                  emailId: emailController.value.text,
                                  address: Address(
                                    city: cityController.value.text,
                                    district: districtController.value.text,
                                    state: stateController.value.text,
                                    street: streetController.value.text,
                                    zipcode: zipController.value.text,
                                  ),
                                  gender: selectedGender,
                                  location: selectedLocation,
                                  mobileNo: mobileController.value.text,
                                  password:
                                      confirmPasswordController.value.text,
                                  regId: registerIdController.text,
                                  specialist: selectedSpecialist,
                                  name: nameController.value.text,
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
