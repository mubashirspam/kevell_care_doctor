import 'package:flutter/material.dart';
import 'package:dr_kevell/features/checkup/presentation/widgets/checkup_card.dart';

import 'widgets/ecg_graph.dart';

class EcgWidget extends StatelessWidget {
  final String ecg;
  final VoidCallback onpress;
  final bool isReading;
  final List<ECGData> data;  final bool isLoading;

  const EcgWidget({
    super.key,
    required this.ecg,
    required this.onpress,
    required this.isReading,
    required this.data,required this.isLoading
  });

  @override
  Widget build(BuildContext context) {
    return CheckupCard(
      isLoading: isLoading,
      // imageName: "imageName",
      name: "ECG",
      onPress: onpress,
      children: [
        SizedBox(
          height: 150,
          child: ECGGraph(
            data: data,
          ),
        ),
      ],
    );
  }
}
