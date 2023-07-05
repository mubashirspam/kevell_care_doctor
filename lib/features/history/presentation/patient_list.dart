import 'package:flutter/material.dart';
import 'package:kevell_care_dr/features/widgets/cards/patient_card.dart';
import 'package:kevell_care_dr/pages/history/presentation/single_person_history_screen.dart';

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
              PersonHistroyScreen.routeName,
            ),
          ),
        ),
      ),
    );
  }
}
