import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care_dr/core/helper/toast.dart';
import 'package:kevell_care_dr/features/home/presentation/bloc/home_bloc.dart';
import 'package:kevell_care_dr/features/widgets/error_widget.dart';
import 'package:kevell_care_dr/features/widgets/loading_widget.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'widgets/waiting_patient_card.dart';

class WaitingPatient extends StatelessWidget {
  const WaitingPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.unauthorized == true) {
          // logOut(context);
        } else if (state.isError) {
          Toast.showToast(context: context, message: "Network Error");
        }
      },
      listenWhen: (previous, current) {
        return previous != current;
      },
      builder: (context, state) {
        if (state.isWaitingPatientLoading) {
          return MultiSliver(children: const [Center(child: LoadingWIdget())]);
        }
        if (state.hasWaitingPatientData) {
          if (state.waitingPatientResult!.data!.isEmpty) {
            return MultiSliver(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://static.vecteezy.com/system/resources/thumbnails/005/006/031/small/no-result-data-document-or-file-not-found-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-etc-vector.jpg"))),
                  child: const Text(
                    "No Appoiment Found",
                  ),
                )
              ],
            );
          }

          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => WaitingPatientCard(
                imageUrl: "",
                isActive: index.isEven ? true : false,
                name: "Johnny Greig",
                statusMessage: "General Checkup",
              ),
            ),
          );
        }
        return MultiSliver(children: const [Center(child: AppErrorWidget())]);
      },
    );
  }
}
