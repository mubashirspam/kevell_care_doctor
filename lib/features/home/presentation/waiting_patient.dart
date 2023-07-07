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
