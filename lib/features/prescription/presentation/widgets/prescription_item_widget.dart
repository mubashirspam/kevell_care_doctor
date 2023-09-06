import 'dart:developer';

import 'package:dr_kevell/configure/color/main_color.dart';
import 'package:dr_kevell/features/prescription/presentation/bloc/precription_bloc.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/alert.dart';
import '../../data/model/prescription_list_model.dart';
import 'edit_prescription.dart';

class PrescriptionItemWidget extends StatelessWidget {
  final PrescriptionElement prescriptionElement;
  const PrescriptionItemWidget({
    required this.prescriptionElement,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 15),
      color: context.theme.secondary,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    prescriptionElement.name ?? "Medicin not Mentioned",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: context.theme.textPrimary),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      prescriptionElement.type ?? "No type mentioned",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.edit, color: context.theme.primary),
              onPressed: () => showModalBottomSheet(
                backgroundColor: Colors.transparent,
                elevation: 0,
                isScrollControlled: true,
                context: context,
                builder: (context) => AddOrEditPrescriptionWidget(
                  isEdit: true,
                  prescriptionElement: prescriptionElement,
                  checkupDetalis: const {},
                ),
              ),
            ),
            IconButton(
                icon: const Icon(Icons.delete,
                    color: MainConfigColorsDarkThem.danger),
                onPressed: () => showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return BlocBuilder<PrecriptionBloc, PrecriptionState>(
                          builder: (context, state) {
                            log(state.isDeleted.toString());
                            return MyCustomAlertDialog(
                              successMessage:
                                  "Successfully deleted your prescription.",
                              questionMesage:
                                  'Are you sure you want to delete the prescription?',
                              okPressed: () {
                                context.read<PrecriptionBloc>().add(
                                      PrecriptionEvent.getPrescriptionList(
                                          appointmentId: prescriptionElement
                                              .appointmentId!),
                                    );
                                Navigator.of(context).pop();
                              },
                              onPress: () {
                                context.read<PrecriptionBloc>().add(
                                      PrecriptionEvent.deletePrescription(
                                        id: prescriptionElement.pno.toString(),
                                      ),
                                    );
                              },
                              isLoading: state.isDeleteLoading,
                              isCompleted: state.isDeleted,
                            );
                          },
                        );
                      },
                    )),
          ],
        ),
      ),
    );
  }
}
