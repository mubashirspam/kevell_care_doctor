import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../../../pages/checkup/presentation/patient_checkup_screen.dart';
import '../../../widgets/avatar/active_avatar.dart';

class WaitingPatientCard extends StatelessWidget {
  final String name;
  final String statusMessage;
  final String imageUrl;
  final String patientID;
  final String doctorID;
  final String appointmentID;

  final DateTime startTime;

  final bool isActive;

  const WaitingPatientCard({
    required this.imageUrl,
    required this.isActive,
    required this.name,
    required this.statusMessage,
    required this.appointmentID,
    required this.doctorID,
    required this.patientID,
    required this.startTime,
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
            isActive: isActive,
            imageUrl: imageUrl,
          ),
          const SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                statusMessage,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: context.theme.primary,
            ),
            onPressed: () {
              if (startTime.isBefore(DateTime.now())) {
                Navigator.of(context).pushNamed(
                  PatientCheckupScreen.routeName,
                  arguments: {
                    'patientID': patientID,
                    'doctorID': doctorID,
                    'appointmentID': appointmentID,
                  },
                );
              } else {
                Duration timeLeft = startTime.difference(DateTime.now());
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
                          child: Text('OK'),
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
