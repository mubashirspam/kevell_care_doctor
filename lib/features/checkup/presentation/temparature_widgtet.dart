import 'package:flutter/material.dart';
import 'package:kevell_care_dr/features/checkup/presentation/widgets/checkup_card.dart';

class TepamratureWidget extends StatelessWidget {
  const TepamratureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CheckupCard(
      imageName: "imageName",
      name: "Body Temperature",
      onPress: () {},
      children: [
        Text(
          "0.00°F",
          style: Theme.of(context).textTheme.headlineLarge,
        )
      ],
    );
  }
}
