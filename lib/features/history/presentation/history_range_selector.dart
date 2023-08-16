import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

import '../../widgets/input_field/date_filed.dart';

class HistoryRangeSelector extends StatelessWidget {
  const HistoryRangeSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.maxFinite,
      decoration: ShapeDecoration(
        color: context.theme.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
      child: const Column(
        children: [
          SizedBox(
            child: Row(
              children: [
                Expanded(
                  child: Text("From"),
                ),
                Expanded(
                  child: Text("To"),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            child: Row(
              children: [
                DateField(),
                SizedBox(width: 15),
                DateField(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


