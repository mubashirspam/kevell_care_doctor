import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/checkup/presentation/stethoscope_widget.dart';
import 'package:dr_kevell/features/checkup/presentation/temparature_widgtet.dart';

import '../../../features/checkup/presentation/unloack.dart';
import '../../../features/checkup/presentation/checkup_header.dart';

class PatientCheckupScreen extends StatelessWidget {
  static const routeName = '/patient-checup-screen';
  const PatientCheckupScreen({super.key});

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
        backgroundColor: context.theme.primary,
        centerTitle: false,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CheckupHeaderWidget(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: UnloackWidget(),
            ),
            TepamratureWidget(),
            StethoscopeWidget(),
            StethoscopeWidget(),
          ],
        ),
      ),
    );
  }
}
