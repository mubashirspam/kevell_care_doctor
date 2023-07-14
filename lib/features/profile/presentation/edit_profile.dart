import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_kevell/core/helper/date.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../../core/helper/toast.dart';
import '../../../core/helper/validater.dart';
import '../../widgets/buttons/text_button_widget.dart';
import '../../widgets/input_field/input_field_widget.dart';
import 'bloc/profile_bloc.dart';

class EditMyProfile extends StatefulWidget {
  final String? name;
  final String? mobile;

  final String? dob;
  final String? adress;

  const EditMyProfile({
    super.key,
    this.adress,
    this.dob,
    this.mobile,
    this.name,
  });

  @override
  State<EditMyProfile> createState() => _EditMyProfileState();
}

class _EditMyProfileState extends State<EditMyProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late TextEditingController nameController;
  late TextEditingController mobileController;
  late TextEditingController dobController;
  late TextEditingController addressController;

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
  void initState() {
    nameController = TextEditingController(text: widget.name);
    dobController = TextEditingController(
        text: dateFormatToDDmonthYYYY(widget.dob.toString()));
    mobileController = TextEditingController(text: widget.mobile);
    addressController = TextEditingController(text: widget.adress);
    super.initState();
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
        child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {
            if (!state.isUpdateLoading && state.isError) {
              Toast.showToast(
                  context: context, message: "Error occured try again later");
            }
            if (!state.isUpdateLoading && state.hasData) {
              Toast.showToast(
                  context: context, message: "Profile Updated Successfully");

                              Navigator.of(context).pop();
            }

          },
          builder: (context, state) {
            return Form(
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
                    Text("Mobile",
                        style: Theme.of(context).textTheme.titleLarge),
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
                      textEditingController: dobController,
                      onChanged: (value) {
                        validateForm();
                      },
                      hintText: "Dob",
                      keyboardType: TextInputType.datetime,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter a dob";
                        }
                        return null; // Return null if validation succeeds
                      },
                    ),
                    const SizedBox(height: 20),
                    Text("Address",
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 10),
                    TextFieldWidget(
                      textEditingController: addressController,
                      onChanged: (value) {
                        validateForm();
                      },
                      hintText: "Adress",
                      keyboardType: TextInputType.visiblePassword,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter a adress";
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
                              onPressed: isButtonDisabled
                                  ? null
                                  : () {
                                      context.read<ProfileBloc>().add(
                                            ProfileEvent.updateProfile(
                                              address:
                                                  addressController.value.text,
                                              dob: dobController.value.text,
                                              mobileNumber:
                                                  mobileController.text,
                                              name: nameController.value.text,
                                            ),
                                          );
                                    },
                              name: "Update",
                              isLoading: state.isUpdateLoading,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
