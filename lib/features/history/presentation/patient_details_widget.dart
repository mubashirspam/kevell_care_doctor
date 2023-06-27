import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';
import 'package:kevell_care_dr/features/widgets/avatar/active_avatar.dart';

class PatientDetailsWidget extends StatelessWidget {
  const PatientDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20).copyWith(bottom: 0),
      decoration: ShapeDecoration(
        color: context.theme.secondary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const ActiveAvatar(
            isActive: false,
          ),
          const SizedBox(height: 10),
          Text(
            "Adrianne Palicki",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(
            height: 40,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                    3, (index) => richText(context, "Age-", "59")),
              ),
            ),
          ),
          richText(context, "Address - ",
              "2972 Westheimer Rd. Santa Ana, Illinois 85486 "),
          const SizedBox(height: 20),
          richText(context, "Case history",
              "\n \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis pharetra suspendisse nisl, et interdum. Morbi fames et justo, mauris, et, scelerisque in aenean odio. Sed egestas quis pellentesque consectetur leo, proin est, pellentesque lorem. In facilisis suspendisse asellus integer varius lectus iaculis dignissim.  ")
        ],
      ),
    );
  }

  Widget richText(BuildContext context, String name, content) => Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: name,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: context.theme.textPrimary,
                  ),
            ),
            TextSpan(
              text: content,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      );
}
