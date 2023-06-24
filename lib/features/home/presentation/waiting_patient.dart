import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';
import 'package:kevell_care_dr/features/widgets/avatar/active_avatar.dart';
import 'package:kevell_care_dr/pages/patien_checkup/presentation/patient_checkup_screen.dart';

class WaitingPatient extends StatelessWidget {
  const WaitingPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Container(
          margin:
              const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 15),
          padding: const EdgeInsets.all(15),
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffBDE5FF),
          ),
          child: Row(
            children: [
              const ActiveAvatar(),
              const SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Johnny Greig",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "General Checkup",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              const Spacer(),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: context.theme.primary,
                ),
                onPressed: () => Navigator.of(context)
                    .pushNamed(PatientCheckupScreen.routeName),
                child: Text(
                  "Attand",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: context.theme.backround,
                      ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
