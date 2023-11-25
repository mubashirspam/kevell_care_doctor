import 'package:dr_kevell/core/helper/date.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../../../pages/checkup/presentation/patient_checkup_screen.dart';

import '../../../../settings/value/constant.dart';
import '../../../widgets/avatar/active_avatar.dart';
import '../../data/models/waiting_patient_model.dart';

class WaitingPatientCard extends StatelessWidget {
  final WaitingPatient data;


  const WaitingPatientCard({
    required this.data,
   
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 15),
      padding: const EdgeInsets.all(15),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffBDE5FF),
      ),
      child: Row(
        children: [
          ActiveAvatar(
            isActive: data.isTimeup,
            imageUrl: data.profileImagelink ??'',
            // imageUrl: "",
          ),
          const SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.name ?? "No name found",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 5),
              Text(
                "${extractTime(data.appointmentstarttime!)} TO ${extractTime(data.appointmentendtime!)}",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          const Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: context.theme.primary,
            ),
            onPressed: () {
              if (data.appointmentstarttime!.isBefore(DateTime.now())) {
                Navigator.of(context).pushNamed(
                  PatientCheckupScreen.routeName,
                  arguments: data
                );
              } else {
                Duration timeLeft =
                    data.appointmentstarttime!.difference(DateTime.now());
                String formattedTimeLeft =
                    '${timeLeft.inMinutes} minutes and ${timeLeft.inSeconds % 60} seconds';

                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Appointment Reminder'),
                      content:
                          Text('Your appointment is in $formattedTimeLeft.'),
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
            child: Text(
              "Attend",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: context.theme.backround,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
