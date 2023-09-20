import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class RangeCalnderWidget extends StatelessWidget {
  final Function function;
  final Function(DateRangePickerSelectionChangedArgs)? onSelectionChanged;
  const RangeCalnderWidget({
    super.key,
    required this.function,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: context.theme.secondary,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      margin: const EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SfDateRangePicker(
          headerHeight: 50,
          headerStyle: DateRangePickerHeaderStyle(
              textAlign: TextAlign.center,
              textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: context.theme.textPrimary)),
          backgroundColor: context.theme.secondary,
          selectionColor: context.theme.primary,
          rangeSelectionColor: context.theme.primary,
          rangeTextStyle:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          endRangeSelectionColor: context.theme.primary,
          startRangeSelectionColor: context.theme.primary,
          toggleDaySelection: true,
          onSelectionChanged: onSelectionChanged,
          selectionMode: DateRangePickerSelectionMode.range,
          initialDisplayDate: DateTime.now(),
          enablePastDates: false,
        ),
      ),
    );
  }
}
