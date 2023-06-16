import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

import '../../../features/checkup/presentation/checkup.dart';

class PatientCheckupScreen extends StatelessWidget {
  const PatientCheckupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.primary,
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
