import 'package:flutter/material.dart';
import 'package:dr_kevell/features/history/presentation/all_checkup_history.dart';
import 'package:dr_kevell/features/history/presentation/health_info_widget.dart';
import 'package:dr_kevell/features/history/presentation/patient_details_widget.dart';
import 'package:dr_kevell/pages/history/presentation/widgets/person_history_appbar.dart';

class PersonHistroyScreen extends StatelessWidget {
  static const routeName = '/single-person';
  const PersonHistroyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PersonHistoryAppBar(),
      body: ListView(
        children: const [
          PatientDetailsWidget(),
          SizedBox(height: 15),
          HealthInfoWidget(),
          Padding(
            padding: EdgeInsets.all(20),
            child: Placeholder(),
          ),
          AllCheckupHistory()
        ],
      ),
    );
  }
}
