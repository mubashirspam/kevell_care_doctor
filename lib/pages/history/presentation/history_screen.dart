import 'package:flutter/material.dart';
import 'package:kevell_care_dr/pages/prescription/presentation/prescription_screen.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: TextButton(
          child:const Text("Prescription"),
          onPressed: () => Navigator.pushNamed(
            context,
            AppoinmentScreen.routeName,
          ),
        ),
      ),
    );
  }
}
