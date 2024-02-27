import 'dart:developer';


import 'package:dr_kevell/core/helper/date.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/home/domain/repositories/appoinmntment_scrvice.dart';

import 'package:flutter/material.dart';

import '../../data/models/waiting_patient_model.dart';

class AppoinemntStatusCard extends StatefulWidget {
  final List<WaitingPatient> appiontment;
  const AppoinemntStatusCard({
    super.key,
    required this.appiontment,
  });

  @override
  State<AppoinemntStatusCard> createState() => _AppoinemntStatusCardState();
}

class _AppoinemntStatusCardState extends State<AppoinemntStatusCard> {
  @override
  void initState() {
    initailizeToken();
    chatServiceIniti();

    super.initState();
  }

  void initailizeToken() {
    for (var element in widget.appiontment) {
      updatedAppointment.add(UpdatedAppointment(
          status: TaskStatus.waiting,
          time: extractTime(element.appointmentStarttime!),
          token: element.apptToken.toString()));
    }
  }

  List<UpdatedAppointment> updatedAppointment = [];

  bool isSocketConnecting = false;
  bool isSocketConnected = false;

  void chatServiceIniti() async {
    try {
      setState(() {
        isSocketConnecting = true;
        isSocketConnected = false;
      });

      await AppointmentService.instance.init().then((value) => setState(() {
            isSocketConnected = value;
          }));
    } catch (e) {
      log(e.toString());
    } finally {
      setState(() {
        isSocketConnecting = false;
      });
    }
  }

  void checkStartTime(int id) {
    AppointmentService.instance.socket!
        .emit("check-starttime", {"appointment_id": id, "patient_id": 1003});

    AppointmentService.instance.socket!.on(" appiontment-starttime", (data) {
      log("appiontment called ======= $data");
      if (mounted) {
        setState(() {
          log(data.toString());
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double tokenWidth = (MediaQuery.of(context).size.width - 70) / 3;
    List<Map<String, Color>> statusColorList = [
      {"Current": context.theme.primary!},
      {"Finished": Colors.green},
      {"Waiting": Colors.grey.shade200},
      {"Skipped": Colors.red},
      // {"Fini": Colors.amber},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ongoing Appointments",
                        style: Theme.of(context).textTheme.headlineMedium!),
                    const SizedBox(height: 5),
                    Text(
                        isSocketConnecting
                            ? "Connecting..."
                            : isSocketConnected
                                ? "Connected"
                                : "Not Connected",
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                color: isSocketConnected
                                    ? Colors.green
                                    : isSocketConnecting
                                        ? context.theme.primary!
                                        : Colors.red)),
                  ],
                ),
                InkWell(
                  onTap: () {
                    chatServiceIniti();
                  },
                  child: CircleAvatar(
                    backgroundColor: context.theme.secondary,
                    maxRadius: 20,
                    child: Icon(
                      Icons.sync,
                      color: context.theme.primary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                runSpacing: 15,
                spacing: 15,
                runAlignment: WrapAlignment.start,
                alignment: WrapAlignment.start,
                children: List.generate(
                    updatedAppointment.length,
                    (i) => InkWell(
                          onTap: () {},
                          child: Container(
                            width: tokenWidth,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: updatedAppointment[i].status ==
                                      TaskStatus.current
                                  ? context.theme.primary
                                  : updatedAppointment[i].status ==
                                          TaskStatus.waiting
                                      ? context.theme.inputFiled
                                      : updatedAppointment[i].status ==
                                              TaskStatus.skipped
                                          ? Colors.red
                                          : updatedAppointment[i].status ==
                                                  TaskStatus.finished
                                              ? Colors.green
                                              : context.theme.inputFiled,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: context.theme.backround,
                                  ),
                                  child: Center(
                                    child: Text(updatedAppointment[i].token,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium!
                                            .copyWith(fontSize: 22)),
                                  ),
                                ),
                                Text(updatedAppointment[i].time,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(color: Colors.black)),
                              ],
                            ),
                          ),
                        )),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              child: Wrap(
                spacing: 10,
                children: List.generate(statusColorList.length, (index) {
                  var statusEntry = statusColorList[index].entries.first;

                  return SizedBox(
                    height: 25,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 10,
                          height: 10,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: statusEntry.value),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          statusEntry.key,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: context.theme.textGrey),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum TaskStatus {
  current,
  finished,
  waiting,
  skipped,
}

class UpdatedAppointment {
  final String time;
  final String token;
  final TaskStatus status;

  UpdatedAppointment(
      {required this.status, required this.time, required this.token});
}


//  UpdatedAppointment(status: TaskStatus.finished, time: "10:01", token: "1"),
