import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import 'package:flutter/material.dart';
import 'package:dr_kevell/features/checkup/presentation/widgets/checkup_card.dart';

import 'package:lottie/lottie.dart';

import '../../../configure/assets_manage/lottie.dart';


class Spo2Widget extends StatelessWidget {
  final String spo2;
  final VoidCallback onpress;
  final bool isReading;

  const Spo2Widget({
    super.key,
    required this.spo2,
    required this.onpress,
    required this.isReading,
  });

  @override
  Widget build(BuildContext context) {
    return CheckupCard(
          // imageName: "imageName",
          name: "Spo2",
          onPress: onpress,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  spo2,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color:
                            isReading ? context.theme.textPrimary : Colors.red,
                      ),
                ),
                isReading
                    ? Lottie.asset(AppLottie.loading,
                        fit: BoxFit.contain, height: 60)
                    : const SizedBox()
              ],
            ),
          ],
        );
  }
}
