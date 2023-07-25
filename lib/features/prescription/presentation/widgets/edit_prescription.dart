import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/buttons/text_button_widget.dart';
import '../../../widgets/input_field/dropdown_field.dart';
import '../../../widgets/input_field/input_field_widget.dart';
import '../../data/model/prescription_list_model.dart' as list;
import '../../data/model/prescription_settings_model.dart' as settings;
import '../bloc/precription_bloc.dart';

class AddOrEditPrescriptionWidget extends StatefulWidget {
  final bool isEdit;
  final list.PrescriptionElement? prescriptionElement;
  const AddOrEditPrescriptionWidget({
    super.key,
    required this.isEdit,
    this.prescriptionElement,
  });

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
  int days = 0;
  settings.Timeoftheday? selectedItem;

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

  // List<Map<String, dynamic>> timeOfTheDay = [
  //   {
  //     'Name': 'Morning',
  //     'active': true,
  //   },
  //   {
  //     'Name': 'Noon',
  //     'active': false,
  //   },
  //   {
  //     'Name': 'Night',
  //     'active': true,
  //   },
  //   {
  //     'Name': 'Evening',
  //     'active': true,
  //   }
  // ];
  // List<Map<String, dynamic>> toBeTaken = [
  //   {
  //     'Name': 'After Food',
  //     'active': false,
  //   },
  //   {
  //     'Name': 'Befor Food',
  //     'active': true,
  //   },
  // ];

  @override
  void initState() {
    if (widget.isEdit) {
      nameController =
          TextEditingController(text: "${widget.prescriptionElement!.name}");
      daysController = TextEditingController(
          text: "${widget.prescriptionElement!.duration}");

      remark =
          TextEditingController(text: "${widget.prescriptionElement!.remark}");

      days = int.parse("${widget.prescriptionElement!.duration}");
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
              BlocBuilder<PrecriptionBloc, PrecriptionState>(
                builder: (context, state) {
                  if (state.hasSettingsData) {
                    List<settings.Timeoftheday> type = context
                        .read<PrecriptionBloc>()
                        .state
                        .prescriptionSettingsResult!
                        .data!
                        .type!;

                    // List<settings.Timeoftheday>? valueFrom = type
                    //     .where((element) =>
                    //         element.name == widget.prescriptionElement!.type)
                    //     .toList();

                    if (widget.isEdit) {
                      return DropDownFiledWidet(
                        items: type.map((settings.Timeoftheday item) {
                          return DropdownMenuItem<settings.Timeoftheday>(
                            value: item,
                            enabled: true,
                            child: Text(item.name ?? ""),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            selectedItem = newValue;
                          });
                        },
                      );
                    } else {
                      return DropDownFiledWidet(
                        value: type.first,
                        items: type.map((settings.Timeoftheday item) {
                          return DropdownMenuItem<settings.Timeoftheday>(
                            value: item,
                            enabled: true,
                            child: Text(item.name ?? ""),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            selectedItem = newValue;
                          });
                        },
                      );
                    }
                  }
                  return DropDownFiledWidet(items: const [
                    DropdownMenuItem(
                      child: Text("Oilment"),
                    ),
                  ], onChanged: (onChanged) {});
                },
              ),
              const SizedBox(height: 20),
              Text(
                "Duration days",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => setState(() {
                      if (days > 1) {
                        days--;
                      } else {
                        days = 1;
                      }
                      daysController = TextEditingController(text: "$days");
                    }),
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
                          setState(() => days = int.parse(value));
                        },
                        hintText: "Days",
                        keyboardType: TextInputType.number,
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
                    onTap: () => setState(() {
                      if (days < 30) {
                        days++;
                      } else {
                        days == 30;
                      }
                      daysController = TextEditingController(text: "$days");
                    }),
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
              BlocBuilder<PrecriptionBloc, PrecriptionState>(
                builder: (context, state) {
                  List<settings.Timeoftheday> timeoftheday = context
                      .read<PrecriptionBloc>()
                      .state
                      .prescriptionSettingsResult!
                      .data!
                      .timeoftheday!;
                  return Wrap(
                      children: List.generate(
                          timeoftheday.length,
                          (index) => chipItem(false,
                              timeoftheday[index].name ?? "Not mentioned")));
                },
              ),
              const SizedBox(height: 20),
              Text("To be Taken",
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 10),
              BlocBuilder<PrecriptionBloc, PrecriptionState>(
                builder: (context, state) {
                  List<settings.Timeoftheday> tobetaken = context
                      .read<PrecriptionBloc>()
                      .state
                      .prescriptionSettingsResult!
                      .data!
                      .tobetaken!;
                  return Wrap(
                      children: List.generate(
                          tobetaken.length,
                          (index) => chipItem(false,
                              tobetaken[index].name ?? "Not mentioned")));
                },
              ),
              const SizedBox(height: 20),
              Text("Remark", style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 10),
              TextFieldWidget(
                maxLines: 5,
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
                      child: BlocConsumer<PrecriptionBloc, PrecriptionState>(
                        listener: (context, state) {},
                        builder: (context, state) {
                          return TextButtonWidget(
                            onPressed: isButtonDisabled
                                ? null
                                : () {
                                    if (widget.isEdit) {
                                      context.read<PrecriptionBloc>().add(
                                            PrecriptionEvent.updatePrescription(
                                                prescriptionElement:
                                                    list.PrescriptionElement()),
                                          );
                                    } else {
                                      context.read<PrecriptionBloc>().add(
                                            PrecriptionEvent.createPrescription(
                                                prescriptionElement:
                                                    list.PrescriptionElement()),
                                          );
                                    }
                                  },
                            name: widget.isEdit ? "Update" : "Create",
                            isLoading: widget.isEdit
                                ? state.isUpdateLoading
                                : state.isCreateLoading,
                          );
                        },
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
