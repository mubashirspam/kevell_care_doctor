import 'package:dr_kevell/features/report/data/model/report_model.dart'
    as report;
import 'package:flutter/material.dart';

import '../../../../core/helper/date.dart';
import '../../../../settings/color/main_color.dart';
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
    double widthEcg = 1;

    if (data.ecgInfo != null && data.ecgInfo!.data != null) {
      String? value = data.ecgInfo!.data?.content;
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
        widthEcg = double.parse(voltageValues.length.toString());
        for (int i = 0; i < voltageValues.length; i++) {
          ecgData.add(ECGData(
            time: i,
            voltage: voltageValues[i],
          ));
        }
      }
    }

    // List<ECGData> grsData = [];
    // List<double> grsvoltageValues;
    // double widthGsr = 1;

    // if (data.gsrInfo!=null) {
    //   String? value = data.gsrInfo!.toString();
    //   if (value != null && value.isNotEmpty) {
    //     grsvoltageValues = value
    //         .split(',')
    //         .map((e) => e.trim()) // Trim whitespace
    //         .where((element) => element.isNotEmpty)
    //         .map((e) {
    //       try {
    //         return double.parse(e);
    //       } catch (_) {
    //         return 0.0; // Handle non-numeric values or provide a suitable default
    //       }
    //     }).toList();
    //     widthGsr = double.parse(grsvoltageValues.length.toString());
    //     for (int i = 0; i < grsvoltageValues.length; i++) {
    //       grsData.add(ECGData(
    //         time: i,
    //         voltage: grsvoltageValues[i],
    //       ));
    //     }
    //   }
    // }
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
                dateFormatToMMddyyyEEEE(data.appointmentDate ?? DateTime.now()),
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
            if (data.temperatureInfo!.data != null)
              ResultCard(
                parameter: "Temprature",
                value: data.temperatureInfo!.data!.content!,
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
            if (data.bpInfo!.data != null)
              BpCard(
                parameter: "Blood pressure",
                value: data.bpInfo!.data!,
              ),
            if (data.ecgInfo != null)
              EcgResultCard(
                width: 2 * widthEcg,
                colors: [
                  generateLightColor(),
                  generateLightColor(),
                ],
                ecgData: ecgData,
                name: "ECG",
              ),
            // if (data.gsrInfo!.data != null)
            //       EcgResultCard(
            //         width: 2 * widthGsr,
            //         colors: [
            //           generateLightColor(),
            //           generateLightColor(),
            //         ],
            //         ecgData: grsData,
            //         name: "GRS ",
            //       ),
            if (data.prescription!.isNotEmpty)
              PrescriptionReportsCard(
                data: data.prescription!,
                doctorData: data.doctor!,
                apppoinmetDate: data.appointmentDate ?? DateTime.now(),
                patientData: data.patient!,
              ),
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
  const EcgResultCard(
      {super.key,
      required this.ecgData,
      required this.width,
      required this.name,
      required this.colors});

  final List<ECGData> ecgData;
  final String name;
  final List<Color> colors;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.all(20).copyWith(top: 0),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: colors,
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: width,
              child: ECGGraph(
                data: ecgData,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
