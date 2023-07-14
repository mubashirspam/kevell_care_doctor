import 'package:flutter/material.dart';


class CustomDatePickerDialog extends StatelessWidget {
  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final void Function(DateTime) onDateTimeChanged;

  const CustomDatePickerDialog({
    super.key,
    required this.initialDate,
    required this.firstDate,
    required this.lastDate,
    required this.onDateTimeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      backgroundColor: Colors.transparent,
      elevation: 0,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      child: Card(
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            
            ),
        margin: const EdgeInsets.all(0),
        child: CalendarDatePicker(
          
          initialCalendarMode: DatePickerMode.day,
          initialDate: initialDate,
          firstDate: firstDate,
          lastDate: lastDate,
          onDateChanged:onDateTimeChanged,
        ),
      ),
    );
  }
}
