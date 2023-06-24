import 'package:flutter/material.dart';
import 'package:kevell_care_dr/features/widgets/cards/patient_card.dart';

import '../../../pages/patien_checkup/presentation/patient_checkup_screen.dart';

class PatientList extends StatelessWidget {
  const PatientList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: List.generate(
          3,
          (index) => PatentCard(
            buttonName: "View Reports",
            onPressed: () => Navigator.of(context).pushNamed(
              PatientCheckupScreen.routeName,
            ),
          ),
        ),
      ),
    );
  }
}
