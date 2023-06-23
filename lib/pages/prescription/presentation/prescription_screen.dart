import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';
import 'package:kevell_care_dr/features/prescription/presentation/prescription.dart';

import '../../../features/prescription/presentation/widgets/edit_prescription.dart';

class AppoinmentScreen extends StatelessWidget {
  static const routeName = '/appoiment-screen';
  const AppoinmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.theme.secondary),
            child: Center(
              child: Icon(
                Icons.chevron_left,
                color: context.theme.primary,
              ),
            ),
          ),
        ),
        backgroundColor: context.theme.backround,
        centerTitle: false,
        title: Text(
          "Prescription",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: context.theme.primary,
          onPressed: () => showModalBottomSheet(
                backgroundColor: Colors.transparent,
                elevation: 0,
                isScrollControlled: true,
                context: context,
                builder: (context) => const AddOrEditPrescriptionWidget(
                  isEdit: false,
                ),
              ),
          child: Icon(
            Icons.add,
            color: context.theme.backround,
          )),
      body: const Prescription(),
    );
  }
}
