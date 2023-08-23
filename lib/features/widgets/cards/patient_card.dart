import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../avatar/active_avatar.dart';

class PatientCard extends StatelessWidget {
  final String buttonName;
  final String patientName;
  final String purpose;
  final String imgUrl;
  final VoidCallback onPressed;
  const PatientCard({
    super.key,
    required this.buttonName,
    required this.onPressed,
    required this.patientName,
    required this.purpose,
    required this.imgUrl,
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
            imageUrl: imgUrl,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    patientName,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    purpose,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: context.theme.primary,
            ),
            onPressed: onPressed,
            child: Text(
              buttonName,
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
