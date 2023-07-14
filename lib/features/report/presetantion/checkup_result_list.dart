import 'package:flutter/material.dart';
import 'package:dr_kevell/configure/color/main_color.dart';
import 'package:dr_kevell/features/report/presetantion/widgets/result_value_card.dart';

class CheckupReportResultList extends StatelessWidget {
  const CheckupReportResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckupResultCard(name: "Body Temperature", onPress: () {}, children: [
          Text(
            "100.9 °F",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: MainConfigColorsDarkThem.danger,
                ),
          ),
        ]),
        CheckupResultCard(name: "Stethoscope", onPress: () {}, children: [
          Text(
            "89",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: MainConfigColorsDarkThem.danger,
                ),
          ),
        ]),
        CheckupResultCard(name: "Otoscop", onPress: () {}, children: [
          Row(
              children: List.generate(
                  4,
                  (index) => Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://www.welchallyn.com/content/dam/welchallyn/images/students/Otoscopy-Pathologies/normal-tympanic-membrane.jpg"))),
                      )))
        ]),
        Text("View All")
      ],
    );
  }
}
