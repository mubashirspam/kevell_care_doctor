import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/checkup/presentation/widgets/checkup_card.dart';
import 'package:lottie/lottie.dart';
import '../../../settings/assets_manage/lottie.dart';
class GlucoseWidget extends StatelessWidget {
  final String glucose;
  final VoidCallback onpress;
  final bool isReading;
  final bool isLoading;

  const GlucoseWidget(
      {super.key,
      required this.glucose,
      required this.onpress,
      required this.isReading,
      required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return CheckupCard(
      isLoading: isLoading,
      // imageName: "imageName",
      name: "Glucose",
      onPress: onpress,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$glucose mg/DL",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
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
      ],
    );
  }
}


