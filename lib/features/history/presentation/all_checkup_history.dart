import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dr_kevell/configure/assets_manage/icons.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/pages/report/presentation/report_screen.dart';

import '../../widgets/calender/calnder.dart';
import '../../widgets/input_field/input_field_widget.dart';

class AllCheckupHistory extends StatelessWidget {
  const AllCheckupHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.secondary!,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "All-over Patient Checkup History",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(fontSize: 14),
                  ),
                  SvgPicture.asset(AppIcons.scheduleFilter),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20).copyWith(top: 0),
            child: SizedBox(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "From",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "To",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20).copyWith(top: 0),
            child: Row(
              children: [
                Expanded(
                  child: TextFieldWidget(
                    fillColor: context.theme.backround,
                    hintText: "01/04/2022",
                    keyboardType: TextInputType.datetime,
                    suffixIcon: GestureDetector(
                      onTap: () => showDialog(
                        context: context,
                        builder: (context) => CustomDatePickerDialog(
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now(),
                          onDateTimeChanged: (onDateTimeChanged) {},
                        ),
                      ),
                      child: Icon(
                        Icons.date_range_rounded,
                        color: context.theme.primary,
                      ),
                    ),
                    validate: (validate) {
                      return;
                    },
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: TextFieldWidget(
                    fillColor: context.theme.backround,
                    hintText: "01/04/2022",
                    keyboardType: TextInputType.datetime,
                    suffixIcon: GestureDetector(
                      onTap: () => showDialog(
                        context: context,
                        builder: (context) => CustomDatePickerDialog(
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now(),
                          onDateTimeChanged: (onDateTimeChanged) {},
                        ),
                      ),
                      child: Icon(
                        Icons.date_range_rounded,
                        color: context.theme.primary,
                      ),
                    ),
                    validate: (validate) {
                      return;
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: List.generate(10, (index) => const ReportItem()),
            ),
          )
        ],
      ),
    );
  }
}

class ReportItem extends StatelessWidget {
  const ReportItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 1),
      elevation: 3,
      color: context.theme.secondary,
      child: ListTile(
        onTap: () => Navigator.of(context).pushNamed(ReportScreen.routeName),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "02/04/2022, Sartuday",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: context.theme.textPrimary,
                    ),
              ),
              TextSpan(
                text: "  02:00 pm - 04:00pm",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
