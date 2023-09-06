import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import 'package:flutter/material.dart';
import 'package:dr_kevell/features/checkup/presentation/widgets/checkup_card.dart';

import 'package:lottie/lottie.dart';

import '../../../configure/assets_manage/lottie.dart';

class BloodPressureWidget extends StatelessWidget {
  final String bp;
  final String bpdia;
    final String bpplus;
  final VoidCallback onpress;
  final bool isReading;

  const BloodPressureWidget({
    super.key,
    required this.bp,
    required this.onpress,
    required this.isReading,
    required this.bpdia,
    required this.bpplus
  });

  @override
  Widget build(BuildContext context) {
    return CheckupCard(
      // imageName: "imageName",
      name: "Blood Pressure",
      onPress: onpress,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Bpsys : $bp/150",
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
              "BpDia : $bpdia/150",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 18,
                    color: isReading ? context.theme.textPrimary : Colors.red,
                  ),
            ),
            Text(
              "BpPulse : $bpplus/130",
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
