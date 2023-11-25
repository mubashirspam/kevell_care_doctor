
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/checkup/presentation/widgets/checkup_card.dart';


class BMIWidget extends StatelessWidget {
  // final BmiResponse? bmiResponse;
  final Map<String, dynamic> bmiResponse;

  final VoidCallback onpress;
  final bool isReading;
  final bool isLoading;

  const BMIWidget({
    super.key,
    required this.onpress,
    required this.isReading,
    required this.isLoading,
    required this.bmiResponse,
  });

  @override
  Widget build(BuildContext context) {
    return CheckupCard(
      name: "BMI",
      isLoading: isLoading,
      onPress: onpress,
      children: bmiResponse.isEmpty
          ? [const SizedBox()]
          : bmiResponse.entries.map((entry) {
              if (entry.key == "type") {
                return const SizedBox();
              }
              String formattedKey = formatKey(entry.key);
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        formattedKey,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                    ),
                    Text(
                      ":  ",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 16,
                          ),
                    ),
                    Expanded(
                      child: Text(
                        entry.key == "bmi"
                            ? "${entry.value} Kg/m2"
                            : entry.key == "status"
                                ? "${entry.value}"
                                : entry.key == "weight"
                                    ? "${entry.value} Kg"
                                    : entry.key == "height"
                                        ? "${entry.value} cm"
                                        : entry.key == "bmr"
                                            ? "${entry.value} kcal"
                                            : entry.key == "impedance"
                                                ? "${entry.value} ohm"
                                                : entry.key == "meta_age"
                                                    ? "${entry.value} Years"
                                                    : entry.key.contains("mass")
                                                        ? "${entry.value} Kg"
                                                        : "${entry.value} % ",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                    )
                  ],
                ),
              );
            }).toList(),
    );
  }
}

String formatKey(String input) {
  // Replace underscores with spaces and then capitalize each word
  if (input == "bmr") {
    return "BMR";
  }
  return input.replaceAll('_', ' ').replaceAllMapped(
      RegExp(r'\b\w'), (match) => match.group(0)!.toUpperCase());
}
