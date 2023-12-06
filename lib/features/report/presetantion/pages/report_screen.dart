import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/report/data/model/report_model.dart'
    as report;
import 'package:flutter/material.dart';


import '../../../checkup/presentation/end_appoinment_report_screen.dart';
import '../../../checkup/presentation/widgets/ecg_graph.dart';

import '../widgets/prescription_reports.dart';
import '../widgets/report_appbar.dart';



class ReportScreen extends StatelessWidget {
  final report.Datum data;
  static const routeName = '/report';
  const ReportScreen({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    List<ECGData> ecgData = [];
    List<double> voltageValues;

    if (data.ecginfo!.isNotEmpty) {
      String? value = data.ecginfo!.first.data?.content;
      if (value != null && value.isNotEmpty) {
        voltageValues = value
            .split(',')
            .map((e) => e.trim()) // Trim whitespace
            .where((element) => element.isNotEmpty)
            .map((e) {
          try {
            return double.parse(e);
          } catch (_) {
            return 0.0; // Handle non-numeric values or provide a suitable default
          }
        }).toList();

        for (int i = 0; i < voltageValues.length; i++) {
          ecgData.add(ECGData(
            time: i,
            voltage: voltageValues[i],
          ));
        }
      }
    }
    List<ECGData> grsData = [];
    List<double> grsvoltageValues;

    if (data.gsrinfo!.isNotEmpty) {
      String? value = data.gsrinfo!.first.data?.content;
      if (value != null && value.isNotEmpty) {
        grsvoltageValues = value
            .split(',')
            .map((e) => e.trim()) // Trim whitespace
            .where((element) => element.isNotEmpty)
            .map((e) {
          try {
            return double.parse(e);
          } catch (_) {
            return 0.0; // Handle non-numeric values or provide a suitable default
          }
        }).toList();

        for (int i = 0; i < grsvoltageValues.length; i++) {
          grsData.add(ECGData(
            time: i,
            voltage: grsvoltageValues[i],
          ));
        }
      }
    }
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
            if (data.temperatureinfo!.data != null)
              ResultCard(
                parameter: "Temprature",
                value: data.temperatureinfo!.data!.content!,
              ),
            if (data.spO2Info!.data != null)
              ResultCard(
                parameter: "Spo2",
                value: data.spO2Info!.data!.content!,
              ),
            if (data.spO2Info!.data != null)
              ResultCard(
                parameter: "Heart rate",
                value: data.spO2Info!.data!.heartRate!,
              ),
            if (data.bpinfo!.data != null)
              BpCard(
                parameter: "Blood pressure",
                value: data.bpinfo!.data!,
              ),
            if (data.ecginfo!.isNotEmpty)
              EcgResultCard(
                ecgData: ecgData,
                name: "ECG Graph",
              ),
            if (data.gsrinfo!.isNotEmpty)
              EcgResultCard(
                ecgData: grsData,
                name: "GRS Graph",
              ),
              if(data.prescription!.isNotEmpty)
             PrescriptionReportsCard(data: data.prescription!),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

class EcgResultCard extends StatelessWidget {
  const EcgResultCard({super.key, required this.ecgData, required this.name});

  final List<ECGData> ecgData;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.all(20).copyWith(top: 0),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [
            context.theme.secondary!,
            context.theme.primary!,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 16),
          ),
          const SizedBox(height: 10),
          ECGGraph(
            data: ecgData,
          ),
        ],
      ),
    );
  }
}
