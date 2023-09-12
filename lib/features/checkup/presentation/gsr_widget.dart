
import 'package:dr_kevell/features/checkup/presentation/widgets/ecg_graph.dart';

import 'package:flutter/material.dart';

import 'widgets/checkup_card.dart';

class GSRgWidget extends StatelessWidget {
  final String gsr;
  final VoidCallback onpress;
  final bool isReading;
  final List<ECGData> data;  final bool isLoading;

  const GSRgWidget({
    super.key,
    required this.gsr,
    required this.onpress,
    required this.isReading,
    required this.data,required this.isLoading
  });

  @override
  Widget build(BuildContext context) {
    return CheckupCard(      isLoading: isLoading,
      // imageName: "imageName",
      name: "GSR",
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
