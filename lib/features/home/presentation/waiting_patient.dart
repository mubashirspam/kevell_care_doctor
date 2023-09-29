import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_kevell/core/helper/toast.dart';
import 'package:dr_kevell/features/home/presentation/bloc/home_bloc.dart';
import 'package:dr_kevell/features/widgets/error_widget.dart';
import 'package:dr_kevell/features/widgets/loading_widget.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../settings/value/constant.dart';
import '../../../settings/value/secure_storage.dart';
import '../../../pages/initialize/initialize.dart';
import 'widgets/waiting_patient_card.dart';

class WaitingPatient extends StatelessWidget {
  const WaitingPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) async {
        if (state.unauthorized) {
          // Toast.showToast(
          //   context: context,
          //   message: "Unauthrized",
          // );
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
        if (state.isWaitingPatientLoading) {
          return MultiSliver(children: const [
            Center(
              child: LoadingWIdget(),
            ),
          ]);
        }
        if (state.hasWaitingPatientData) {
          if (state.waitingPatientResult!.data!.waitingPatients!.isEmpty) {
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
            // return SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //     childCount: 1,
            //     (context, index) => const WaitingPatientCard(
            //       imageUrl: "",
            //       isActive: false,
            //       name: "No name",
            //       statusMessage: "No name",
            //     ),
            //   ),
            // );
          } else {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: state.waitingPatientResult!.data!.totalCount,
                (context, index) => WaitingPatientCard(
                data: state.waitingPatientResult!.data!.waitingPatients![index],
                ),
              ),
            );
          }
        }
        return MultiSliver(children: const [Center(child: AppErrorWidget())]);
      },
    );
  }
}
