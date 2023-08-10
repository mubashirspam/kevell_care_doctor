import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import 'package:flutter/material.dart';
import 'package:dr_kevell/features/checkup/presentation/widgets/checkup_card.dart';

import 'package:lottie/lottie.dart';

import '../../../configure/assets_manage/lottie.dart';


class PositionWidget extends StatelessWidget {
  final String position;
  final VoidCallback onpress;
  final bool isReading;

  const PositionWidget({
    super.key,
    required this.position,
    required this.onpress,
    required this.isReading,
  });

  @override
  Widget build(BuildContext context) {
    return CheckupCard(
          // imageName: "imageName",
          name: "Patient Postion",
          onPress: onpress,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  position,
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
