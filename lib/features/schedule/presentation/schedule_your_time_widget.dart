import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';
import 'package:kevell_care_dr/features/schedule/presentation/widgets/range_calnder.dart';
import 'package:kevell_care_dr/features/schedule/presentation/widgets/range_time.dart';
import 'package:kevell_care_dr/features/widgets/buttons/text_button_widget.dart';

class ScheduleYourTimeWidget extends StatelessWidget {
  const ScheduleYourTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const RangeCalnderWidget(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            "Select time",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const DateRanger(),
        SizedBox(
          height: 100,
          child: Center(
            child: Row(
              children: [
                Expanded(
                    child: Text("Select no. of Patient",
                        style: Theme.of(context).textTheme.titleMedium)),
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: context.theme.primary,
                  ),
                  child: const Center(
                    child: Text(
                      "-",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Text(
                  "03",
                  style: TextStyle(
                      color: context.theme.textPrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: context.theme.primary,
                  ),
                  child: const Center(
                    child: Text(
                      "+",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            const Expanded(child: SizedBox()),
            Expanded(
                flex: 2,
                child: TextButtonWidget(
                    bgColor: context.theme.backround,
                    fgColor: context.theme.textPrimary,
                    name: "Cancel",
                    onPressed: () {},
                    isLoading: false)),
            Expanded(
                flex: 2,
                child: TextButtonWidget(
                    fgColor: Colors.white,
                    name: "Schedule",
                    onPressed: () {},
                    isLoading: false)),
          ],
        )
      ],
    );
  }
}
