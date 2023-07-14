import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../../widgets/buttons/text_button_widget.dart';
import '../../../widgets/input_field/dropdown_field.dart';
import '../../../widgets/input_field/input_field_widget.dart';

class AddOrEditPrescriptionWidget extends StatefulWidget {
  final bool isEdit;
  const AddOrEditPrescriptionWidget({super.key, required this.isEdit});

  @override
  State<AddOrEditPrescriptionWidget> createState() =>
      _AddOrEditPrescriptionWidgetState();
}

class _AddOrEditPrescriptionWidgetState
    extends State<AddOrEditPrescriptionWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();

  TextEditingController daysController = TextEditingController();

  TextEditingController remark = TextEditingController();

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

  List<Map<String, dynamic>> timeOfTheDay = [
    {
      'Name': 'Morning',
      'active': true,
    },
    {
      'Name': 'Noon',
      'active': false,
    },
    {
      'Name': 'Night',
      'active': true,
    },
    {
      'Name': 'Evening',
      'active': true,
    }
  ];
  List<Map<String, dynamic>> toBeTaken = [
    {
      'Name': 'After Food',
      'active': false,
    },
    {
      'Name': 'Befor Food',
      'active': true,
    },
  ];

  @override
  void initState() {
    if (widget.isEdit) {
      nameController = TextEditingController(text: "Mubashir");
      daysController = TextEditingController(text: "03 Days");

      remark = TextEditingController(
          text:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis pharetra suspendisse nisl, et interdum. Morbi fames et justo, mauris, et, scelerisque in aenean odio. Sed egestas quis pellentesque consectetur leo, proin est, pellentesque lorem. ");
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
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
              Text(widget.isEdit ? "Edit Prescription" : "Add Prescription",
                  style: Theme.of(context).textTheme.headlineLarge!),
              const SizedBox(
                height: 25,
              ),
              Text("Name", style: Theme.of(context).textTheme.titleLarge),
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
              Text("Medicine type",
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 10),
              DropDownFiledWidet(items: const [
                DropdownMenuItem(
                  child: Text("Oilment"),
                ),
              ], onChanged: (onChanged) {}),
              const SizedBox(height: 20),
              Text(
                "Duration days",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: context.theme.inputFiled),
                      width: 50,
                      height: 50,
                      child: Center(
                          child: Text(
                        "-",
                        style: TextStyle(
                            color: context.theme.textPrimary, fontSize: 30),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFieldWidget(
                        textEditingController: daysController,
                        onChanged: (value) {
                          validateForm();
                        },
                        hintText: "Days",
                        keyboardType: TextInputType.name,
                        validate: (name) {
                          if (name == null || name.isEmpty) {
                            return "Please enter number of days";
                          }
                          return null; // Return null if validation succeeds
                        },
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: context.theme.inputFiled),
                      width: 50,
                      height: 50,
                      child: const Center(
                        child: Icon(
                          Icons.add,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text("Time of the day",
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 10),
              Wrap(
                  children: List.generate(
                      timeOfTheDay.length,
                      (index) => chipItem(timeOfTheDay[index]['active'],
                          timeOfTheDay[index]['Name']))),
              const SizedBox(height: 20),
              Text("To be Taken",
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 10),
              Wrap(
                  children: List.generate(
                      toBeTaken.length,
                      (index) => chipItem(toBeTaken[index]['active'],
                          toBeTaken[index]['Name']))),
              const SizedBox(height: 20),
              Text("Remark", style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 10),
              TextFieldWidget(
                maxLines: 7,
                textEditingController: remark,
                onChanged: (value) {
                  validateForm();
                },
                hintText: "Remark",
                keyboardType: TextInputType.visiblePassword,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Remark";
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
    );
  }

  Widget chipItem(bool isActive, String name) => Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Chip(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor:
              isActive ? context.theme.primary : context.theme.secondary,
          label: Text(
            name,
            style: TextStyle(
              color: isActive ? context.theme.backround : context.theme.primary,
            ),
          ),
        ),
      );
}
