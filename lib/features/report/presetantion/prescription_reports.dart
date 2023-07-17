import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';

import '../../../pages/prescription/presentation/prescription_screen.dart';

class PrescriptionReportsCard extends StatelessWidget {
  const PrescriptionReportsCard({super.key});

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
                          onPressed: () => Navigator.of(context)
                              .pushNamed(PrescriptionScreen.routeName),
                          style: TextButton.styleFrom(
                            backgroundColor: context.theme.backround,
                            foregroundColor: context.theme.primary,
                          ),
                          child: const Text("View"),
                        ),
                        const SizedBox(width: 15),
                        TextButton(
                            onPressed: () {},
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
