import 'package:flutter/material.dart';
import 'package:kevell_care_dr/features/history/presentation/patient_list.dart';

import '../../../features/history/presentation/history_range_selector.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        child: SingleChildScrollView(
      child: Column(
        children: [
          HistoryRangeSelector(),
          SizedBox(height: 20),
          PatientList(),
        ],
      ),
    ));
  }
}
