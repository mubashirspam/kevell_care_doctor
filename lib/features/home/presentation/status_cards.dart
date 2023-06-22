import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

class StatusCards extends StatelessWidget {
  final List<Color> color;

  final String statusName;
  const StatusCards({
    super.key,
    required this.color,
    required this.statusName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: color,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "20",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const Icon(Icons.verified_user_outlined)
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            statusName,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: context.theme.backround, fontSize: 14),
          )
        ],
      ),
    );
  }
}
