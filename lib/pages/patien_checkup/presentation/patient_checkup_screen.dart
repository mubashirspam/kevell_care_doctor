import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

import '../../../features/checkup/presentation/checkup.dart';

class PatientCheckupScreen extends StatelessWidget {
  static const routeName = '/patient-checup-screen';
  const PatientCheckupScreen({super.key});

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
        backgroundColor: context.theme.primary,
        centerTitle: false,
      ),
      body: Column(
        children: [
          Placeholder(),
          const SizedBox(
            height: 10,
          ),
          CheckupWidget()
        ],
      ),
    );
  }
}
