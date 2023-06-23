import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';
import 'package:kevell_care_dr/features/prescription/presentation/widgets/edit_prescription.dart';

class Prescription extends StatelessWidget {
  const Prescription({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20).copyWith(bottom: 0),
      itemCount: 3,
      itemBuilder: (context, index) => ListTile(
        contentPadding: const EdgeInsets.only(bottom: 5),
        title: Text(
          "Lorem ipsum dolor sit amet",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            "Lorem ipsum, dolor sit amet Lorem ipsum, dolor sit amet Lorem ipsum, dolor sit amet",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        trailing: TextButton(
          style: TextButton.styleFrom(
            minimumSize: Size(65, 30),
            backgroundColor: context.theme.primary,
            foregroundColor: context.theme.backround,
          ),
          child: const Text("Edit"),
          onPressed: () => showModalBottomSheet(
            backgroundColor: Colors.transparent,
            elevation: 0,
            isScrollControlled: true,
            context: context,
            builder: (context) => const AddOrEditPrescriptionWidget(
              isEdit: true,
            ),
          ),
        ),
      ),
      separatorBuilder: (context, index) => Divider(
        color: context.theme.textGrey,
      ),
    );
  }
}
