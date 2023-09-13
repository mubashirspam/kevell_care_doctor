import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/checkup/presentation/widgets/checkup_card.dart';
import 'package:lottie/lottie.dart';
import '../../../settings/assets_manage/lottie.dart';

class BloodPressureWidget extends StatelessWidget {
  final String bp;
  final String bpdia;
  final String bpplus;
  final VoidCallback onpress;
  final bool isReading;
  final bool isLoading;

  const BloodPressureWidget({
    super.key,
    required this.bp,
    required this.onpress,
    required this.isReading,
    required this.bpdia,
    required this.isLoading,
    required this.bpplus,
  });

  @override
  Widget build(BuildContext context) {
    return CheckupCard(
      // imageName: "imageName",
      name: "Blood Pressure", isLoading: isLoading,
      onPress: onpress,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Systolic : $bp (<120)",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 14,
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
          children: [
            Text(
              "Diastolic : $bpdia (<80)",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 14,
                    color: isReading ? context.theme.textPrimary : Colors.red,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              "Pulse : $bpplus (60 ~100)",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 14,
                    color: isReading ? context.theme.textPrimary : Colors.red,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
