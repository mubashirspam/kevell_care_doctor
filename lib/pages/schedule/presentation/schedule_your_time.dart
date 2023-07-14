import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../../features/schedule/presentation/schedule_your_time_widget.dart';

class ScheduleYourTime extends StatelessWidget {
  static const routeName = '/schedule-your-time-screen';
  const ScheduleYourTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.theme.secondary),
            child: Center(
              child: Icon(
                Icons.chevron_left,
                color: context.theme.primary,
              ),
            ),
          ),
        ),
        centerTitle: false,
        title: Text(
          "Schedule Your Time",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: context.theme.primary,
              )),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CupertinoSwitch(
                activeColor: context.theme.primary,
                value: true,
                onChanged: (onChanged) {}),
          )
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScheduleYourTimeWidget(),
          ],
        ),
      ),
    );
  }
}
