import 'dart:developer';

import 'package:dr_kevell/core/helper/date.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_kevell/features/home/presentation/bloc/home_bloc.dart';
import 'package:dr_kevell/features/widgets/error_widget.dart';
import 'package:dr_kevell/features/widgets/loading_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../pages/checkup/presentation/patient_checkup_screen.dart';
import '../../../settings/assets_manage/icons.dart';
import '../../../settings/color/main_color.dart';
import '../data/models/waiting_patient_model.dart';

class WaitingPatientWidget extends StatelessWidget {
  const WaitingPatientWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      // listener: (context, state) async {
      //   if (state.unauthorized) {
      //     // Toast.showToast(
      //     //   context: context,
      //     //   message: "Unauthrized",
      //     // );
      //     await deleteFromSS(secureStoreKey)
      //         .then((value) => Navigator.of(context).pushAndRemoveUntil(
      //               MaterialPageRoute(
      //                 builder: (context) => const Initialize(),
      //               ),
      //               (route) => false,
      //             ));
      //   } else if (state.isError) {
      //     Toast.showToast(context: context, message: "Network Error");
      //   }
      // },
      // listenWhen: (previous, current) {
      //   return previous != current;
      // },
      builder: (context, state) {
        if (state.isWaitingPatientLoading && !state.hasWaitingPatientData) {
          return MultiSliver(children: const [
            Center(
              child: LoadingWIdget(),
            ),
          ]);
        }
        if (state.hasWaitingPatientData) {
          if (state.waitingPatientResult!.data == null ||
              state.waitingPatientResult!.data!.isEmpty) {
            return Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://static.vecteezy.com/system/resources/thumbnails/005/006/031/small/no-result-data-document-or-file-not-found-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-etc-vector.jpg"))),
              child: const Text(
                "No Appoiment Found",
              ),
            );
            // return SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //     childCount: 1,
            //     (context, index) => const WaitingPatientCard(
            //       imageUrl: "",
            //       isActive: false,
            //       name: "No name",
            //       statusMessage: "No name",
            //     ),
            //   ),
            // );
          } else {
            final data = state.waitingPatientResult!.data;

            return Column(
                children: List.generate(
              data!.length,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 20)
                    .copyWith(bottom: 20),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: context.theme.backround,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueGrey.shade100.withOpacity(0.5),
                          blurRadius: 20)
                    ]),
                child: ExpansionTile(
                  initiallyExpanded: true,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  title: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SizedBox(
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.scheduleA,
                            color: context.theme.primary,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            dateFormatToYYYYMMdd(data[index].days!),
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: context.theme.textPrimary),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: CircleAvatar(
                              maxRadius: 3,
                            ),
                          ),
                          Text(
                            "${extractTime(data[index].startTime!)} to ${extractTime(data[index].endTime!)}",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: context.theme.textPrimary),
                          ),
                        ],
                      ),
                    ),
                  ),
                  children: List.generate(
                      (data[index].bookedappointmentdetails == null ||
                              data[index].bookedappointmentdetails!.isEmpty)
                          ? 0
                          : data[index].bookedappointmentdetails!.length, (i) {
                    final List<WaitingPatient>? appointment =
                        data[index].bookedappointmentdetails;

                    final Color color = generateLightColor();
                    return InkWell(
                      onTap: () {
                        String formatedTimeOnly =
                            extractTime(appointment[i].appointmentStarttime!);

                        String formatedTimeNowOnly =
                            extractTime(DateTime.now());

                        log("c : $formatedTimeOnly");
                        log("s : $formatedTimeNowOnly");

                        if (formatedTimeOnly.compareTo(formatedTimeNowOnly) <
                            0) {
                          // Appointment has already started, navigate to the checkup screen
                          log("Appointment has already started");
                          Navigator.of(context).pushNamed(
                            PatientCheckupScreen.routeName,
                            arguments: appointment[i],
                          );
                        } else {
                          Duration timeLeft = calculateTimeLeft(
                              formatedTimeOnly, formatedTimeNowOnly);
                          String formattedTimeLeft =
                              '${timeLeft.inMinutes} minutes and ${timeLeft.inSeconds % 60} seconds';

                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Appointment Reminder'),
                                content: Text(
                                    'Your appointment is in $formattedTimeLeft.'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      child: Card(
                        elevation: 0,
                        color: color,
                        margin: const EdgeInsets.only(top: 3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: Text(
                                appointment![i].apptToken.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                      color: context.theme.textPrimary,
                                    ),
                              ),
                            ),
                            title: Text(
                              appointment[i].patientname ?? "",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            subtitle: Text(
                              "Male (23)",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            trailing: Icon(
                              Icons.chevron_right_rounded,
                              color: context.theme.textPrimary,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ));
          }
        }
        return const Center(child: AppErrorWidget());
      },
    );
  }
}

Duration calculateTimeLeft(String appointmentTime, String currentTime) {
  // Parse appointment time and current time strings into DateTime objects
  List<String> appointmentParts = appointmentTime.split(':');
  List<String> currentParts = currentTime.split(':');

  int appointmentHour = int.parse(appointmentParts[0]);
  int appointmentMinute = int.parse(appointmentParts[1]);
  int currentHour = int.parse(currentParts[0]);
  int currentMinute = int.parse(currentParts[1]);

  // Create DateTime objects with same date but different times
  DateTime appointmentDateTime =
      DateTime(2000, 1, 1, appointmentHour, appointmentMinute);
  DateTime currentDateTime = DateTime(2000, 1, 1, currentHour, currentMinute);

  // Calculate difference
  return appointmentDateTime.difference(currentDateTime);
}
