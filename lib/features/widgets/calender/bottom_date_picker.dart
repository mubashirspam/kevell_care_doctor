import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/cupertino.dart';


class BottomDatePicker extends StatelessWidget {
  const BottomDatePicker({
    super.key,
    required this.initialDate,
    required this.onDateTimeChanged,
  });

  final DateTime initialDate;
  final void Function(DateTime p1) onDateTimeChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.6,
      padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(bottom: 15),
      margin: const EdgeInsets.all(20).copyWith(bottom: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30).copyWith(),
        color: context.theme.secondary,
      ),
      child: CupertinoDatePicker(
        initialDateTime: DateTime.now(),
        maximumDate: DateTime.now(),
        minimumDate: initialDate,
        // maximumYear: DateTime.now().year,
        // minimumYear: initialDate.year,
        mode: CupertinoDatePickerMode.date,
        showDayOfWeek: true,
        onDateTimeChanged: onDateTimeChanged,
      ),
    );
  }
}
