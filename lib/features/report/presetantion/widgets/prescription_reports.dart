

import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/prescription/presentation/pages/create_prescription_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';

import '../../../../core/helper/enums.dart';
import '../../../../core/helper/toast.dart';
import '../../../../settings/color/main_color.dart';
import '../../../prescription/presentation/bloc/precription_bloc.dart';
import '../../data/model/report_model.dart';

class PrescriptionReportsCard extends StatelessWidget {
  final List<ReportPrescription> data;

  const PrescriptionReportsCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   context.read<PrecriptionBloc>().add(
    //       PrecriptionEvent.getPrescriptionList(appointmentId: appoinemntId));
    // });
    return BlocConsumer<PrecriptionBloc, PrecriptionState>(
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
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                    ],
                  ),
                );
              });
        }
        if (pdfState.pdfError) {
          Navigator.of(context, rootNavigator: true).pop(context);

          Toast.showToast(context: context, message: pdfState.pdfErrorMessage);
        }
        if (!pdfState.isPdfLoading &&
            pdfState.pdfCreated &&
            pdfState.pdf != null) {
          await getTemporaryDirectory().then((value) async {
            Navigator.of(context, rootNavigator: true).pop(context);
            if (pdfState.action == PdfActions.share) {
              Share.shareFiles(['${value.path}/prescription.pdf'],
                  text: 'Check out my PDF!');
            }
            if (pdfState.action == PdfActions.download) {
              OpenFile.open('${value.path}/prescription.pdf');
            }
            if (pdfState.action == PdfActions.view) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CreatePrescriptionScreen(checkupDetalis: {}),
                ),
              );
            }
          });
        }
      },
      builder: (context, state) {
        return Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: ShapeDecoration(
            color: generateLightColor(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Icon(
                        Icons.picture_as_pdf,
                        color: context.theme.textPrimary,
                      ),
                      const SizedBox(width: 15),
                      Text(
                        "Prescription Reports",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            context.read<PrecriptionBloc>().add(
                                  PrecriptionEvent.genaratePdf(
                                      action: PdfActions.view, data: data),
                                );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: context.theme.backround,
                            foregroundColor: context.theme.primary,
                          ),
                          child: Text(
                            "Edit",
                            style: TextStyle(color: context.theme.textPrimary),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: TextButton(
                            onPressed: () {
                              context.read<PrecriptionBloc>().add(
                                    PrecriptionEvent.genaratePdf(
                                        action: PdfActions.download,
                                        data: data),
                                  );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: context.theme.backround,
                              foregroundColor: context.theme.primary,
                            ),
                            child: Text("Download",
                                style: TextStyle(
                                    color: context.theme.textPrimary))),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            context.read<PrecriptionBloc>().add(
                                  PrecriptionEvent.genaratePdf(
                                      action: PdfActions.share, data: data),
                                );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: context.theme.backround,
                            foregroundColor: context.theme.primary,
                          ),
                          child: Text("share",
                              style:
                                  TextStyle(color: context.theme.textPrimary)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
