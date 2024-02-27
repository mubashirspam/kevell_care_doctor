// import 'dart:math';

import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/checkup/data/model/end_appoinment_model.dart';
import 'package:dr_kevell/features/login/presentation/login.dart';
import 'package:dr_kevell/features/widgets/avatar/active_avatar.dart';
import 'package:dr_kevell/features/widgets/buttons/text_button_widget.dart';
import 'package:dr_kevell/pages/initialize/initialize.dart';
import 'package:dr_kevell/features/prescription/presentation/pages/create_prescription_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helper/date.dart';
import '../../../settings/color/main_color.dart';
import '../../report/presetantion/pages/report_screen.dart';
import '../../report/data/model/report_model.dart';
import 'bloc/checkup_bloc.dart';
import 'widgets/ecg_graph.dart';

class AppoinmentsEndReportScrenn extends StatelessWidget {
  const AppoinmentsEndReportScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   context.read<CheckupBloc>().add(
    //         CheckupEvent.endAppoinment(
    //           appoinmentId: "1003",
    //           patientId: "1159",
    //         ),
    //       );
    // });

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Report",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<CheckupBloc, CheckupState>(
          builder: (context, state) {
            if (state.hasData) {
              if (state.endAppoinmentResult!.data != null) {
                Data datas = state.endAppoinmentResult!.data!;
                List<ECGData> ecgData = [];
                List<double> voltageValues;
                double widthEcg = 1;

                if (datas.checkupResult!.ecg != null) {
                  String? value = datas.checkupResult!.ecg;
                  if (value != null && value.isNotEmpty) {
                    voltageValues = value
                        .split(',')
                        .map((e) => e.trim()) // Trim whitespace
                        .where((element) => element.isNotEmpty)
                        .map((e) {
                      try {
                        return double.parse(e);
                      } catch (_) {
                        return 0.0; // Handle non-numeric values or provide a suitable default
                      }
                    }).toList();
                    widthEcg = double.parse(voltageValues.length.toString());
                    for (int i = 0; i < voltageValues.length; i++) {
                      ecgData.add(ECGData(
                        time: i,
                        voltage: voltageValues[i],
                      ));
                    }
                  }
                }
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: context.theme.secondary,
                      ),
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          const ActiveAvatar(
                            imageUrl:
                                "https://images.unsplash.com/photo-1692610492938-37a4eed63ac0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=928&q=80",
                            isActive: false,
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text(context, "Name - ", "${datas.patientname}"),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: text(context, "Symptoms - ",
                                    "${datas.userDoctorcommand}"),
                              ),
                              text(
                                  context,
                                  "Date & Time - ",

                                  // "${dateFormatToYYYYMMddWithDay(datas.appointmentdate!)}  \n${extractTime(datas.appointmentstarttime!)}  to ${extractTime(datas.appointmentendtime!)} "

                                  "${extractTime(datas.appointmentStarttime!)}  to ${extractTime(datas.appointmentEndtime!)} "),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 20),
                      child: Text(
                        "Case  history",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, bottom: 20, right: 20),
                      child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis pharetra suspendisse nisl, et interdum. Morbi fames et justo, mauris, et, scelerisque in aenean odio. Sed egestas quis pellentesque consectetur leo, proin est, pellentesque lorem. In facilisis suspendisse asellus integer varius lectus iaculis dignissim. ",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.normal)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 20),
                      child: Text(
                        "Medical Reports",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(fontSize: 18),
                      ),
                    ),
                    // if (datas.checkupResult!.bodyTemp)
                    //   ResultCard(
                    //     parameter: "Temprature",
                    //     value: datas.checkupResult!.bodyTemp.data!.content!,
                    //   ),
                    if (datas.checkupResult!.bodyTemp != null)
                      ResultCard(
                        parameter: "Temprature",
                        value: datas.checkupResult!.bodyTemp!,
                      ),

                    if (datas.checkupResult!.spO2 != null)
                      ResultCard(
                        parameter: "Spo2",
                        value: datas.checkupResult!.spO2!,
                      ),

                    if (datas.checkupResult!.heartRate != null)
                      ResultCard(
                        parameter: "Heart Rate",
                        value: datas.checkupResult!.heartRate!,
                      ),
                    if (datas.checkupResult!.bp != null)
                      BpCard(
                        bp: datas.checkupResult!.bp,
                        parameter: "Blood pressure",
                      ),

                    if (datas.checkupResult!.glucose != null)
                      ResultCard(
                        parameter: "Glucose",
                        value: datas.checkupResult!.glucose ?? "",
                      ),
                    if (datas.checkupResult!.ecg != null)
                      EcgResultCard(
                        width: 2 * widthEcg,
                        colors: [
                          generateLightColor(),
                          generateLightColor(),
                          generateLightColor(),
                          generateLightColor(),
                          generateLightColor(),
                          generateLightColor(),
                          generateLightColor(),
                        ],
                        ecgData: ecgData,
                        name: "ECG Graph",
                      ),

                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextButtonWidget(
                                name: "Prescription + ",
                                onPressed: () {
                                  Navigator.of(context).pushNamed(
                                      CreatePrescriptionScreen.routeName,
                                      arguments: {
                                        "appointmentID": datas.id,
                                        "doctorID": datas.doctorId,
                                        "patientID": datas.patientId
                                      });
                                },
                                isLoading: false,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: TextButtonWidget(
                                name: "Go to Home",
                                onPressed: () {
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const Initialize(),
                                      ),
                                      (route) => false);
                                },
                                isLoading: false,
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                );
              } else {
                const Center(
                  child: Text(
                    "Patient has skipped the SLOT!!!",
                  ),
                );
              }
            }
            if (state.isLoading) {
              return const Center(child: LoginWidget());
            }
            return Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://static.vecteezy.com/system/resources/thumbnails/005/006/031/small/no-result-data-document-or-file-not-found-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-etc-vector.jpg"))),
              child: const Text(
                "No Data Found",
              ),
            );
          },
        ),
      ),
    );
  }

  Widget text(BuildContext context, t1, t2) => Text.rich(
        TextSpan(text: t1, children: [
          TextSpan(
            text: t2,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ]),
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: context.theme.textPrimary,
            ),
      );
}

class ResultCard extends StatelessWidget {
  final String parameter;
  final String value;
  const ResultCard({
    required this.parameter,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20).copyWith(top: 0),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              generateLightColor(),
              generateLightColor(),
            ],
          ),
        ),
        child: Row(
          children: [
            Text(
              parameter,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontSize: 16),
            ),
            const SizedBox(width: 10),
            Text(
              value,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontSize: 14, color: Colors.red),
            )
          ],
        ));
  }
}

class BpCard extends StatelessWidget {
  final String parameter;
  final Bp? bp;
  final BpInfoData? value;
  const BpCard({
    required this.parameter,
    this.value,
    this.bp,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20).copyWith(top: 0),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              generateLightColor(),
              generateLightColor(),
            ],
          ),
        ),
        child: Column(
          children: List.generate(
            3,
            (i) => Row(
              children: [
                Text(
                  i == 0
                      ? 'Systolic :'
                      : i == 1
                          ? 'Diastolic :'
                          : 'Pulse :',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontSize: 16),
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: i == 1
                      ? const EdgeInsets.symmetric(vertical: 10)
                      : const EdgeInsets.all(0),
                  child: value != null
                      ? Text(
                          i == 0
                              ? "${value!.bpsysValue} ( <120 )"
                              : i == 1
                                  ? "${value!.bpDiaValue} ( <80 )"
                                  : "${value!.bpPulseValue} ( 60 ~ 100 )",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(fontSize: 14, color: Colors.red),
                        )
                      : Text(
                          i == 0
                              ? "${bp!.bpsysValue} ( <120 )"
                              : i == 1
                                  ? "${bp!.bpDiaValue} ( <80 )"
                                  : "${bp!.bpPulseValue} ( 60 ~ 100 )",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(fontSize: 14, color: Colors.red),
                        ),
                )
              ],
            ),
          ),
        ));
  }
}
