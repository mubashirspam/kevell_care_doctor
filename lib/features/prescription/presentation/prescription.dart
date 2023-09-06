import 'dart:developer';

import 'package:dr_kevell/features/prescription/data/model/prescription_list_model.dart';
import 'package:dr_kevell/features/prescription/presentation/prescription_details.dart';
import 'package:dr_kevell/features/widgets/buttons/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../../configure/value/constant.dart';
import '../../../configure/value/secure_storage.dart';
import '../../../core/helper/toast.dart';
import '../../../pages/initialize/initialize.dart';
import '../../widgets/loading_widget.dart';
import 'bloc/precription_bloc.dart';
import 'widgets/prescription_item_widget.dart';

class Prescription extends StatelessWidget {
  final String appointmentID;
  const Prescription({
    super.key,
    required this.appointmentID,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PrecriptionBloc, PrecriptionState>(
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
          // Toast.showToast(context: context, message: "Network Error");
        }
      },
      listenWhen: (previous, current) {
        return previous != current;
      },
      builder: (context, state) {
        if (state.isGetLoading) {
          return const Center(
            child: LoadingWIdget(),
          );
        }

        if (state.hasData) {
          log("message");

          log("${state.prescriptionResult!.data!.prescriptions!.length}");

          if (state.prescriptionResult!.data!.totalCount == null) {
            return Center(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    Icon(
                      Icons.medical_services_outlined,
                      size: 50,
                      color: context.theme.inputFiled,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text('Their is no prescription added',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                  ],
                ),
              ),
            );
          } else {
            List<PrescriptionElement>? prescriptionElement = context
                .read<PrecriptionBloc>()
                .state
                .prescriptionResult!
                .data!
                .prescriptions!
                .first
                .prescription!;
            log(prescriptionElement.length.toString());
            return ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(20).copyWith(top: 0),
              itemCount: prescriptionElement.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PrescriptionDetials( prescriptionElement: prescriptionElement[index],),
                )),
                child: PrescriptionItemWidget(
                  prescriptionElement: prescriptionElement[index],
                ),
              ),
            );
          }
        }
        return Padding(
          padding: const EdgeInsets.all(20),
          child: TextButtonWidget(
            name: "Refresh",
            onPressed: () {
              context.read<PrecriptionBloc>().add(
                  PrecriptionEvent.getPrescriptionList(
                      appointmentId: int.parse(appointmentID)));
            },
            isLoading: state.isGetLoading,
          ),
        );
      },
    );
  }
}
