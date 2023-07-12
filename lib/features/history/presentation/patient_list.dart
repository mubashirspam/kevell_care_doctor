import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care_dr/features/widgets/cards/patient_card.dart';
import 'package:kevell_care_dr/pages/history/presentation/single_person_history_screen.dart';

import 'bloc/history_bloc.dart';

class PatientList extends StatelessWidget {
  const PatientList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HistoryBloc, HistoryState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SizedBox(
          child: Column(
            children: List.generate(
              3,
              (index) => PatientCard(
                buttonName: "View Reports",
                imgUrl:
                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
                patientName: "Johnny Greig",
                purpose: "General Checkup",
                onPressed: () => Navigator.of(context).pushNamed(
                  PersonHistroyScreen.routeName,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
