import 'package:dr_kevell/features/history/presentation/bloc/history_bloc.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/history/presentation/patient_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helper/date.dart';
import '../../../features/history/presentation/history_range_selector.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HistoryBloc>().add(HistoryEvent.gePatientHistoryList(
          fromDate: dateFormatToYYYYMMdd(DateTime.now()),
          toDate: dateFormatToYYYYMMdd(DateTime.now())));
    });
    return const SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HistoryRangeSelector(),
            SizedBox(height: 20),
            PatientList(),
          ],
        ),
      ),
    );
  }
}
