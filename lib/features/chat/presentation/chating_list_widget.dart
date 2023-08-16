import 'package:flutter/material.dart';

import 'package:kevell_care_dr/features/chat/presentation/widgets/message_widget.dart';

class ChatingListWidget extends StatelessWidget {
  const ChatingListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20).copyWith(bottom: 0),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: MessageWidget(
          isReciving: index.isEven ? true : false,
        ),
      ),
    );
  }
}
