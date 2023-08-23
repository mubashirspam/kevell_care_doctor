import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/schedule_bloc.dart';

class CounterWidget extends StatelessWidget {
  final String value;
  const CounterWidget({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text("Select no. of Patient",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: context.theme.textPrimary))),
        InkWell(
          onTap: () =>
              context.read<ScheduleBloc>().add(const ScheduleEvent.decrement()),
          child: Container(
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
        ),
        Text(
          value,
          style: TextStyle(
              color: context.theme.textPrimary,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        InkWell(
          onTap: () =>
              context.read<ScheduleBloc>().add(const ScheduleEvent.increment()),
          child: Container(
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
        ),
      ],
    );
  }
}