import 'package:dr_kevell/features/profile/data/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_kevell/core/helper/date.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../../core/helper/date_formater.dart';
import '../../../core/helper/date_validater.dart';
import '../../../core/helper/toast.dart';
import '../../../core/helper/validater.dart';
import '../../widgets/buttons/text_button_widget.dart';
import '../../widgets/calender/calnder.dart';
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

  @override
  void initState() {
    nameController = TextEditingController(text: widget.name);
    dobController = TextEditingController(
        text: dateFormatToddmmyyyy(DateTime.parse(widget.dob.toString())));
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
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
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
                      readOnly: true,
                      hintText: "12/12/2023",
                      inputFormatters: [DateInputFormatter()],
                      validate: DateValidator.validateDate,
                      keyboardType: TextInputType.datetime,
                      suffixIcon: GestureDetector(
                        onTap: () => showDialog(
                          context: context,
                          builder: (context) =>
                              BlocBuilder<ProfileBloc, ProfileState>(
                            builder: (context, state) {
                              return CustomDatePickerDialog(
                                initialDate: DateTime.parse(
                                    widget.dob ?? DateTime.now().toString()),
                                firstDate: DateTime(1920, 9, 7, 17, 30),
                                lastDate: DateTime.now(),
                                onDateTimeChanged: (onDateTimeChanged) {
                                  context
                                      .read<ProfileBloc>()
                                      .add(ProfileEvent.pickDate(
                                        date: onDateTimeChanged,
                                      ));

                                  dobController = TextEditingController(
                                      text: dateFormatToddmmyyyy(
                                          onDateTimeChanged));

                                  // Navigator.of(context).pop();
                                },
                              );
                            },
                          ),
                        ),
                        child: Icon(
                          Icons.calendar_month,
                          color: context.theme.primary,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text("Address",
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 10),
                    TextFieldWidget(
                      textEditingController: addressController,
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
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  context.read<ProfileBloc>().add(
                                        ProfileEvent.updateProfile(
                                          profileData: Data(
                                              registeredUserId: state.result!
                                                  .data!.registeredUserId,
                                              address:
                                                  addressController.value.text,
                                              dob: state.date,
                                              name: nameController.value.text,
                                              mobileNo:
                                                  mobileController.value.text),
                                        ),
                                      );
                                }
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
