import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/report/data/model/report_model.dart'
    as report;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/checkup/presentation/end_appoinment_report_screen.dart';
import '../../../features/prescription/presentation/bloc/precription_bloc.dart';
import '../../../features/report/presetantion/prescription_reports.dart';
import 'widgets/report_appbar.dart';

import 'dart:developer';

import 'package:dr_kevell/core/helper/toast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';

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
            data.prescription != null && data.prescription!.isNotEmpty
                ? BlocConsumer<PrecriptionBloc, PrecriptionState>(
                    listener: (context, pdfState) async {
                      if (pdfState.isPdfLoading) {
                        showDialog(
                            barrierDismissible: false,
                            useSafeArea: true,
                            barrierColor: Colors.black.withOpacity(0.1),
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: context.theme.primary,
                                elevation: 0,
                                content: Row(
                                  children: [
                                    const SizedBox(width: 20),
                                    const SizedBox(
                                        height: 15,
                                        width: 15,
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                        )),
                                    const SizedBox(width: 20),
                                    Text(
                                      "Genarating Pdf...",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    )
                                  ],
                                ),
                              );
                            });
                      }
                      if (pdfState.pdfError) {
                        Navigator.of(context, rootNavigator: true).pop(context);

                        Toast.showToast(
                            context: context,
                            message: pdfState.pdfErrorMessage);
                      }
                      if (!pdfState.isPdfLoading &&
                          pdfState.pdfCreated &&
                          pdfState.pdf != null) {
                        log("Prescription pdf created Sucsessfully");
                        await Future.delayed(const Duration(milliseconds: 1000),
                            () {
                          Navigator.of(context, rootNavigator: true)
                              .pop(context);
                        });
                        final tempDir = await getTemporaryDirectory();
                        await Share.shareFiles(
                            ['${tempDir.path}/prescription.pdf'],
                            text: 'Check out my PDF!');
                      }
                    },
                    builder: (context, state) {
                      return PrescriptionReportsCard(
                        data: data.prescription!,
                      );
                    },
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
