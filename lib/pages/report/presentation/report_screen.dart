import 'package:dr_kevell/features/report/data/model/report_model.dart'
    as report;
import 'package:flutter/material.dart';

import '../../../features/checkup/presentation/end_appoinment_report_screen.dart';
import '../../../features/report/presetantion/prescription_reports.dart';
import 'widgets/report_appbar.dart';

class ReportScreen extends StatelessWidget {
  final report.Datum data;
  static const routeName = '/report';
  const ReportScreen({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ReportScreenAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis pharetra suspendisse nisl, et interdum. Morbi fames et justo, mauris,et, scelerisque in aenean odio. Sed egestas quis pellentesque consectetur leo, proin est,",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20).copyWith(top: 0),
              child: Text(
                "Checkup Result",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            data.temperatureinfo!.data != null
                ? ResultCard(
                    parameter: "Temprature",
                    value: data.temperatureinfo!.data!.content!,
                  )
                : const SizedBox(),
            data.spO2Info!.data != null
                ? ResultCard(
                    parameter: "Spo2",
                    value: data.spO2Info!.data!.content!,
                  )
                : const SizedBox(),
            data.spO2Info!.data != null
                ? ResultCard(
                    parameter: "Heart rate",
                    value: data.spO2Info!.data!.heartRate!,
                  )
                : const SizedBox(),
            Padding(
              padding: const EdgeInsets.all(20).copyWith(top: 0),
              child: Text(
                "Prescription Reports",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const PrescriptionReportsCard()
          ],
        ),
      ),
    );
  }
}
