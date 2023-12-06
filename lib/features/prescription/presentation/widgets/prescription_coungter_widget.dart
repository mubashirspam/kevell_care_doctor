import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';

enum TimeOfDayEnum { morning, evening, noon, night }

class PrecriptionCounterWidget extends StatelessWidget {
  final TimeOfDayEnum timeOfDay;
  final VoidCallback incriment;
  final VoidCallback decriment;
final String value ;
  const PrecriptionCounterWidget({
    Key? key,
    required this.timeOfDay,
    required this.decriment,
    required this.incriment,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String emoji = '';
    String greeting = '';

    switch (timeOfDay) {
      case TimeOfDayEnum.morning:
        emoji = "🌞";
        greeting = "Morning";
        break;
      case TimeOfDayEnum.evening:
        emoji = "🌆";
        greeting = "Evening";
        break;
      case TimeOfDayEnum.noon:
        emoji = "☀️";
        greeting = "Noon";
        break;
      case TimeOfDayEnum.night:
        emoji = "🌙";
        greeting = "Night";
        break;
    }

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: context.theme.secondary,
          boxShadow: [
            BoxShadow(
                blurRadius: 2,
                color: context.theme.primary!,
                offset: const Offset(1, 1))
          ]),
      child: Column(
        children: [
          Text(
            emoji,
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 5),
          Text(
            greeting,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: decriment,
                  icon: const Icon(Icons.remove_circle_outline_outlined)),
              Text(
                value,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              IconButton(
                  onPressed: incriment,
                  icon: const Icon(Icons.add_circle_outline_sharp)),
            ],
          )
        ],
      ),
    );
  }
}
