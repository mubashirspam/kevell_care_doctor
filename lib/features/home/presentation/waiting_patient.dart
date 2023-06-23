import 'package:flutter/material.dart';
import 'package:kevell_care_dr/configure/color/main_color.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';
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
              Stack(
                children: [
                  const CircleAvatar(
                    maxRadius: 35,
                    minRadius: 35,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80"),
                  ),
                  Positioned(
                    right: 2,
                    top: 2,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: MainConfigColorsDarkThem.success,
                          border: Border.all(
                            width: 2,
                            color: context.theme.backround!,
                          )),
                    ),
                  )
                ],
              ),
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
