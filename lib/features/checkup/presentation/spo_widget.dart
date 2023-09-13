import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import 'package:flutter/material.dart';
import 'package:dr_kevell/features/checkup/presentation/widgets/checkup_card.dart';

import 'package:lottie/lottie.dart';

import '../../../settings/assets_manage/lottie.dart';

class Spo2Widget extends StatelessWidget {
  final String spo2;
  final String heartBeat;
  final VoidCallback onpress;
  final bool isReading;  final bool isLoading;

  const Spo2Widget({
    super.key,
    required this.spo2,
    required this.onpress,
    required this.isReading,
    required this.heartBeat,required this.isLoading
  });

  @override
  Widget build(BuildContext context) {
    return CheckupCard(      isLoading: isLoading,
      // imageName: "imageName",
      name: "Spo2",
      onPress: onpress,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Spo2 : $spo2",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 18,
                    color: isReading ? context.theme.textPrimary : Colors.red,
                  ),
            ),
            isReading
                ? Lottie.asset(AppLottie.loading,
                    fit: BoxFit.contain, height: 60)
                : const SizedBox()
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Heart Rate : $heartBeat",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 18,
                    color: isReading ? context.theme.textPrimary : Colors.red,
                  ),
            ),
          ],
        )
      ],
    );
  }
}
