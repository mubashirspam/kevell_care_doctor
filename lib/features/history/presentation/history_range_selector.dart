import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

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
      child: Column(
        children: [
          const SizedBox(
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
          const SizedBox(height: 15),
          SizedBox(
            child: Row(
              children: [
                filed(context),
                const SizedBox(width: 15),
                filed(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget filed(BuildContext context) => Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          decoration: ShapeDecoration(
            color: context.theme.secondary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            shadows: const [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 15,
                offset: Offset(4, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            children: [
              Icon(
                Icons.calendar_month,
                color: context.theme.primary,
              ),
              const SizedBox(width: 15),
              Text(
                "02/04/2022",
                style: Theme.of(context).textTheme.titleLarge,
              )
            ],
          ),
        ),
      );
}
