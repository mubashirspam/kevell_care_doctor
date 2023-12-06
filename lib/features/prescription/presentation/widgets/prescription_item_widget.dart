import 'package:dr_kevell/features/prescription/presentation/pages/edit_or_create_prescription.dart';

import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/alert.dart';
import '../../data/model/prescription_model.dart';
import '../bloc/precription_bloc.dart';

class PrescriptionItemWidget extends StatelessWidget {
  final Prescription prescription;
  final int index;
  final Map<String, dynamic> checkupDetalis;
  const PrescriptionItemWidget({
    required this.prescription,
    required this.checkupDetalis,
    required this.index,
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
          6,
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 15),
          Expanded(
            child: Text(prescription.name ?? "Medicin not Mentioned",
                style: Theme.of(context).textTheme.titleLarge!),
          ),
          Container(
            width: 2,
            height: 50,
            color: Colors.white,
          ),
          IconButton(
              icon: Icon(Icons.edit, color: context.theme.primary),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => EditOrCreatePrescription(
                      isEdit: true,
                      prescription: prescription,
                      checkupDetalis: checkupDetalis,
                      index: index,
                    ),
                  ),
                );
              }),
          Container(
            width: 2,
            height: 50,
            color: Colors.white,
          ),
          IconButton(
            icon:
                const Icon(Icons.delete, color: Color.fromRGBO(244, 67, 54, 1)),
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) {
                return BlocBuilder<PrecriptionBloc, PrecriptionState>(
                  builder: (context, state) {
                    return MyCustomAlertDialog(
                      successMessage: "Successfully deleted your prescription.",
                      questionMesage:
                          'Are you sure you want to delete the prescription?',
                      okPressed: () {
                        Navigator.of(context).pop();
                      },
                      onPress: () {
                        context.read<PrecriptionBloc>().add(
                              PrecriptionEvent.deletePrescription(index: index),
                            );
                      },
                      isLoading: state.isDeleteLoading,
                      isCompleted:
                          state.deletedIndex == index && state.isDeleted,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
