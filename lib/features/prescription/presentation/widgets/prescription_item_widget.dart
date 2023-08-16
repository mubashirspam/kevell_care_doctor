import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

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
    return ListTile(
      contentPadding: const EdgeInsets.only(bottom: 5),
      title: Text(
        prescriptionElement.name ?? "Medicin not Mentioned",
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          prescriptionElement.type ?? "No type mentioned",
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
      trailing: TextButton(
        style: TextButton.styleFrom(
          minimumSize: const Size(65, 30),
          backgroundColor: context.theme.primary,
          foregroundColor: context.theme.backround,
        ),
        child: const Text("Edit"),
        onPressed: () => showModalBottomSheet(
          backgroundColor: Colors.transparent,
          elevation: 0,
          isScrollControlled: true,
          context: context,
          builder: (context) => AddOrEditPrescriptionWidget(
            isEdit: true,
            prescriptionElement: prescriptionElement,
            checkupDetalis: {
                // 'patientID': patientID,
                // 'doctorID': doctorID,
                // 'appointmentID': appointmentID,
              },
          ),
        ),
      ),
    );
  }
}
