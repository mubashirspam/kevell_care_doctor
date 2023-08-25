import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../pages/prescription/presentation/prescription_screen.dart';
import '../../prescription/data/model/prescription_pdf_model.dart';
import '../../prescription/presentation/bloc/precription_bloc.dart';
import '../data/model/report_model.dart';

class PrescriptionReportsCard extends StatelessWidget {
  final List<Prescription> data;
  const PrescriptionReportsCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: ShapeDecoration(
        color: context.theme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.picture_as_pdf,
              color: context.theme.backround,
            ),
            const SizedBox(width: 15),
            Expanded(
                child: SizedBox(
              child: Column(
                children: [
                  Text(
                    "Prescription PDF_Adrianne Palicki_02 sartuday 2022, 02:00 - 04:15.pdf",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () =>
                              //     Navigator.of(context).push(MaterialPageRoute(
                              //   builder: (context) => const PdfViewPage(),
                              // )),

                              Navigator.of(context).pushNamed(
                                  PrescriptionScreen.routeName,
                                  arguments: {
                                "appointmentID": data.first.appointmentId
                              }),
                          style: TextButton.styleFrom(
                            backgroundColor: context.theme.backround,
                            foregroundColor: context.theme.primary,
                          ),
                          child: const Text("View"),
                        ),
                        const SizedBox(width: 15),
                        TextButton(
                            onPressed: () {
                              context.read<PrecriptionBloc>().add(
                                    PrecriptionEvent.genaratePdf(
                                      data: data
                                          .map((element) => PrescriptionPdfModel
                                              .fromPrescriptionElement(element))
                                          .toList(),
                                    ),
                                  );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: context.theme.backround,
                              foregroundColor: context.theme.primary,
                            ),
                            child: const Text("Download")),
                      ],
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
