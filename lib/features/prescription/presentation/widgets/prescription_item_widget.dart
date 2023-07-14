import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import 'edit_prescription.dart';

class PrescriptionItemWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  const PrescriptionItemWidget({
    required this.subTitle,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(bottom: 5),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          subTitle,
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
          builder: (context) => const AddOrEditPrescriptionWidget(
            isEdit: true,
          ),
        ),
      ),
    );
  }
}
