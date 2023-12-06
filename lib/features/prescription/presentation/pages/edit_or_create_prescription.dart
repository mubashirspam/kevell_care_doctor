import 'dart:developer';

import 'package:dr_kevell/core/helper/toast.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/buttons/text_button_widget.dart';

import '../../../widgets/search.dart';

import '../../data/model/prescription_model.dart';
import '../bloc/precription_bloc.dart';
import '../widgets/Prescription_coungter_widget.dart';

class EditOrCreatePrescription extends StatefulWidget {
  final bool isEdit;
  final Map<String, dynamic> checkupDetalis;
  final int? index;
  final Prescription? prescription;
  const EditOrCreatePrescription({
    super.key,
    required this.isEdit,
    this.index,
    this.prescription,
    required this.checkupDetalis,
  });

  @override
  State<EditOrCreatePrescription> createState() =>
      _EditOrCreatePrescriptionState();
}

class _EditOrCreatePrescriptionState extends State<EditOrCreatePrescription> {
  TextEditingController remark = TextEditingController();

  String medicinName = "Please Type";

  int days = 1;
  Prescription? newPrescription;
  List<double> numberOnPeriod = [0, 0, 0, 0];
  List<Tobetaken> toBeTaken = [
    Tobetaken(
      name: "After Food",
      value: true,
    ),
    Tobetaken(
      name: "Befor Food",
      value: false,
    ),
  ];

  @override
  void initState() {
    if (widget.isEdit) {
      newPrescription = widget.prescription;
      medicinName = widget.prescription!.name ?? "";
      toBeTaken = widget.prescription!.tobetaken!;
      numberOnPeriod[0] =
          double.parse(widget.prescription!.timeoftheday!.morning!);
      numberOnPeriod[1] =
          double.parse(widget.prescription!.timeoftheday!.noon!);
      numberOnPeriod[2] =
          double.parse(widget.prescription!.timeoftheday!.evening!);
      numberOnPeriod[3] =
          double.parse(widget.prescription!.timeoftheday!.night!);
    }

    super.initState();
  }

  void savePrescription() {
    if (medicinName == "Please Type" || medicinName == "") {
      Toast.showToast(context: context, message: "Please add medicine name");
    } else if (numberOnPeriod.every((element) => element == 0)) {
      Toast.showToast(context: context, message: "Please add medicine time");
    } else {
      log("called");
      final newPrescription = Prescription(
          duration: days.toString(),
          name: medicinName,
          timeoftheday: Timeoftheday(
            evening: numberOnPeriod[2].toString(),
            morning: numberOnPeriod[0].toString(),
            night: numberOnPeriod[3].toString(),
            noon: numberOnPeriod[1].toString(),
          ),
          tobetaken: toBeTaken,
          type: "Medicine");

      if (widget.isEdit) {
        log("called edit");
        context.read<PrecriptionBloc>().add(
              PrecriptionEvent.editOrCreatePrescription(
                prescriptions: newPrescription,
                index: widget.index,
                isEditing: widget.isEdit,
              ),
            );

        Navigator.of(context).pop();
      } else {
        log("called add");
        context.read<PrecriptionBloc>().add(
              PrecriptionEvent.editOrCreatePrescription(
                prescriptions: newPrescription,
                isEditing: false,
              ),
            );
        Navigator.of(context).pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.theme.secondary),
            child: Center(
              child: Icon(
                Icons.chevron_left,
                color: context.theme.primary,
              ),
            ),
          ),
        ),
        backgroundColor: context.theme.backround,
        centerTitle: false,
        title: Text(
          "Prescription",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 15),
              Expanded(
                child: SuggetstionSerchBar(
                  suggestionsList: medicines,
                  hintText: "Search medicine name",
                  search: (value) {
                    setState(() {
                      medicinName = value;
                    });
                  },
                ),
              ),
              const SizedBox(width: 15),
              InkWell(
                child: CircleAvatar(
                  backgroundColor: context.theme.secondary,
                  child: Center(
                      child: Icon(
                    Icons.add,
                    color: context.theme.primary,
                  )),
                ),
              ),
              const SizedBox(width: 15),
            ],
          ),
          // ignore: prefer_const_constructors
          SizedBox(height: 20),
          Expanded(
            child: SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("Medicine Name",
                          style: Theme.of(context).textTheme.headlineMedium),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      width: double.maxFinite,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: context.theme.secondary,
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: Text(medicinName,
                          style: Theme.of(context).textTheme.titleLarge!),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(15).copyWith(top: 0),
                      child: Row(children: [
                        Expanded(
                          child: PrecriptionCounterWidget(
                            value: numberOnPeriod[0].toString(),
                            decriment: () {
                              if (numberOnPeriod[0] > 0) {
                                numberOnPeriod[0] -= 0.5;
                              } else {
                                numberOnPeriod[0] = 0;
                              }
                              setState(() {});
                            },
                            incriment: () {
                              if (numberOnPeriod[0] < 5) {
                                numberOnPeriod[0] += 0.5;
                              } else {
                                numberOnPeriod[0] = 5;
                              }
                              setState(() {});
                            },
                            timeOfDay: TimeOfDayEnum.morning,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: PrecriptionCounterWidget(
                            value: numberOnPeriod[1].toString(),
                            decriment: () {
                              if (numberOnPeriod[1] > 0) {
                                numberOnPeriod[1] -= 0.5;
                              } else {
                                numberOnPeriod[1] = 0;
                              }
                              setState(() {});
                            },
                            incriment: () {
                              if (numberOnPeriod[1] < 5) {
                                numberOnPeriod[1] += 0.5;
                              } else {
                                numberOnPeriod[1] = 5;
                              }
                              setState(() {});
                            },
                            timeOfDay: TimeOfDayEnum.noon,
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15).copyWith(top: 0),
                      child: Row(children: [
                        Expanded(
                          child: PrecriptionCounterWidget(
                            value: numberOnPeriod[2].toString(),
                            decriment: () {
                              if (numberOnPeriod[2] > 0) {
                                numberOnPeriod[2] -= 0.5;
                              } else {
                                numberOnPeriod[2] = 0;
                              }
                              setState(() {});
                            },
                            incriment: () {
                              if (numberOnPeriod[2] < 5) {
                                numberOnPeriod[2] += 0.5;
                              } else {
                                numberOnPeriod[2] = 5;
                              }
                              setState(() {});
                            },
                            timeOfDay: TimeOfDayEnum.evening,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: PrecriptionCounterWidget(
                            value: numberOnPeriod[3].toString(),
                            decriment: () {
                              if (numberOnPeriod[3] > 0) {
                                numberOnPeriod[3] -= 0.5;
                              } else {
                                numberOnPeriod[3] = 0;
                              }
                              setState(() {});
                            },
                            incriment: () {
                              if (numberOnPeriod[3] < 5) {
                                numberOnPeriod[3] += 0.5;
                              } else {
                                numberOnPeriod[3] = 5;
                              }
                              setState(() {});
                            },
                            timeOfDay: TimeOfDayEnum.night,
                          ),
                        ),
                      ]),
                    ),
                    const SizedBox(height: 15),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () => setState(() {
                              if (days > 1) {
                                days--;
                              } else {
                                days = 1;
                              }
                            }),
                            child: CircleAvatar(
                              backgroundColor: context.theme.secondary,
                              child: Center(
                                  child: Icon(
                                Icons.remove,
                                color: context.theme.primary,
                              )),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: context.theme.secondary,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 10,
                            ),
                            child: Center(
                                child: Text(
                              "$days",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    color: context.theme.textPrimary,
                                    fontSize: 20,
                                  ),
                            )),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              if (days < 30) {
                                days++;
                              } else {
                                days == 30;
                              }
                            }),
                            child: CircleAvatar(
                              backgroundColor: context.theme.secondary,
                              child: Center(
                                  child: Icon(
                                Icons.add,
                                color: context.theme.primary,
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => InkWell(
                          onTap: () {
                            setState(() {
                              days = index == 0
                                  ? 7
                                  : index == 1
                                      ? 15
                                      : 30;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: index == 0 && days == 7 ||
                                          index == 1 && days == 15 ||
                                          index == 2 && days == 30
                                      ? context.theme.primary!
                                      : context.theme.inputFiled!,
                                  width: 2),
                              borderRadius: BorderRadius.circular(100),
                              color: context.theme.inputFiled,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 5,
                            ),
                            child: Text(
                              index == 0
                                  ? " 7 Days"
                                  : index == 1
                                      ? " 15 Days"
                                      : " 30 Days",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    color: context.theme.textPrimary,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.maxFinite,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: context.theme.inputFiled),
                      child: Row(
                        children: List.generate(
                          toBeTaken.length,
                          (index) => Expanded(
                            child: InkWell(
                              onTap: () {
                                toBeTaken[0].value = index == 0;
                                toBeTaken[1].value = index == 1;

                                setState(() {});
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: toBeTaken[index].value!
                                        ? context.theme.primary
                                        : context.theme.inputFiled),
                                child: Center(
                                  child: Text(
                                    toBeTaken[index].name!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          color: toBeTaken[index].value!
                                              ? Colors.white
                                              : context.theme.textPrimary,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextButtonWidget(
                          name: "Save",
                          onPressed: () {
                            savePrescription();
                          },
                          isLoading: false),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
