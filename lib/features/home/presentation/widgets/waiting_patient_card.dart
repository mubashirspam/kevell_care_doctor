import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../../../pages/patien_checkup/presentation/patient_checkup_screen.dart';
import '../../../widgets/avatar/active_avatar.dart';

class WaitingPatientCard extends StatelessWidget {
  final String name;
  final String statusMessage;
  final String imageUrl;
  final bool isActive;

  const WaitingPatientCard({
    required this.imageUrl,
    required this.isActive,
    required this.name,
    required this.statusMessage,
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
            onPressed: () =>
                Navigator.of(context).pushNamed(PatientCheckupScreen.routeName),
            child: Text(
              "Attand",
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
