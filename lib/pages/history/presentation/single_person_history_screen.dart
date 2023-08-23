import 'package:dr_kevell/features/report/domain/entities/fetch_report_payload.dart';
import 'package:dr_kevell/features/report/presetantion/report_data.dart';
import 'package:flutter/material.dart';

// import 'package:dr_kevell/features/history/presentation/health_info_widget.dart';
import 'package:dr_kevell/features/report/presetantion/patient_details_widget.dart';
import 'package:dr_kevell/pages/history/presentation/widgets/person_history_appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/report/presetantion/bloc/report_bloc.dart';

class PersonHistroyScreen extends StatelessWidget {
  final Map<String, dynamic> patientIdWithName;
  static const routeName = '/single-person';
  const PersonHistroyScreen({
    super.key,
    required this.patientIdWithName,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ReportBloc>().add(ReportEvent.fetchReport(
          fetchReportPayload: FetchReportPayload(
              startingDate: DateTime.now().subtract(const Duration(days: 10)),
              endingDate: DateTime.now(),
              patientId: patientIdWithName["id"])));
      context
          .read<ReportBloc>()
          .add(ReportEvent.fetchReportGeneralinfo(id: patientIdWithName["id"]));
    });
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: PersonHistoryAppBar(
          name: patientIdWithName["name"] ?? "No Name",
        ),
        body: const SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: SafeArea(
            child: TabBarView(
              children: <Widget>[
                PatientDetailsWidget(),
                // PatientDetailsWidget(),
                ReportDataWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
