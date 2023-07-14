import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_kevell/features/history/data/model/history_patient_list_model.dart';
import 'package:dr_kevell/features/widgets/cards/patient_card.dart';
import 'package:dr_kevell/features/widgets/loading_widget.dart';
import 'package:dr_kevell/pages/history/presentation/single_person_history_screen.dart';

import '../../../configure/value/constant.dart';
import '../../../configure/value/secure_storage.dart';
import '../../../core/helper/toast.dart';
import '../../../pages/initialize/initialize.dart';
import '../../widgets/error_widget.dart';
import 'bloc/history_bloc.dart';

class PatientList extends StatelessWidget {
  const PatientList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HistoryBloc, HistoryState>(
      listener: (context, state) async {
        if (state.unauthorized) {
          Toast.showToast(
            context: context,
            message: "Unauthrized",
          );
          await deleteFromSS(secureStoreKey)
              .then((value) => Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const Initialize(),
                    ),
                    (route) => false,
                  ));
        } else if (state.isError) {
          Toast.showToast(context: context, message: "Network Error");
        }
      },
      listenWhen: (previous, current) {
        return previous != current;
      },
      builder: (context, state) {
        if (state.isPatientListLoading) {
          return const Center(
            child: LoadingWIdget(),
          );
        }

        if (state.hasPatientListData) {
          if (state.patientListResult!.data!.patients == null) {
            return Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://static.vecteezy.com/system/resources/thumbnails/005/006/031/small/no-result-data-document-or-file-not-found-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-etc-vector.jpg"))),
              child: const Text(
                "No Appoiment Found",
              ),
            );
          } else {
            final List<Patient>? list = state.patientListResult!.data!.patients;
            return SizedBox(
              child: Column(
                children: List.generate(
                  list!.length,
                  (index) => PatientCard(
                    buttonName: "View",
                    imgUrl: list[index].imageUrl ??
                        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
                    patientName: list[index].name ?? "No name",
                    purpose: list[index].type ?? "Genaral",
                    onPressed: () => Navigator.of(context).pushNamed(
                      PersonHistroyScreen.routeName,
                    ),
                  ),
                ),
              ),
            );
          }
        }
        return const Center(child: AppErrorWidget());
      },
    );
  }
}
