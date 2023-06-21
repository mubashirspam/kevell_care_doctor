import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

class DateRanger extends StatelessWidget {
  const DateRanger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void showDialog(Widget child) {
      showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
          height: 216,
          padding: const EdgeInsets.only(top: 6.0),
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          color: context.theme.backround,
          child: SafeArea(
            top: false,
            child: child,
          ),
        ),
      );
    }

    DateTime time = DateTime(2016, 5, 10, 22, 35);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: context.theme.secondary),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
              onTap: () {
                showDialog(
                  CupertinoDatePicker(
                    initialDateTime: time,
                    mode: CupertinoDatePickerMode.time,
                    use24hFormat: true,
                    onDateTimeChanged: (DateTime newTime) {
                      // setState(() => time = newTime);
                    },
                  ),
                );
              },
              child: timeSection(context, "13.00", true)),
          const SizedBox(width: 40),
          IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_right)),
          const SizedBox(width: 40),
          GestureDetector(
              onTap: () {
                showDialog(
                  CupertinoDatePicker(
                    initialDateTime: time,
                    mode: CupertinoDatePickerMode.time,
                    use24hFormat: true,
                    // This is called when the user changes the time.
                    onDateTimeChanged: (DateTime newTime) {
                      // setState(() => time = newTime);
                    },
                  ),
                );
              },
              child: timeSection(context, "13.00", false)),
        ],
      ),
    );
  }

  Widget timeSection(BuildContext context, String time, bool isFrom) =>
      SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isFrom ? "From" : "To",
              style:
                  TextStyle(color: context.theme.textPrimary!.withOpacity(0.5)),
            ),
            const SizedBox(height: 5),
            Text(
              time,
              style: TextStyle(
                color: context.theme.textPrimary,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      );
}
