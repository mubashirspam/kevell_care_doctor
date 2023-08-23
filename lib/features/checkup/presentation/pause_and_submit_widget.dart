import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import 'package:flutter/material.dart';

import '../../widgets/buttons/text_button_widget.dart';

class PauseAndSubmitWidget extends StatelessWidget {
  final VoidCallback pause;
  final VoidCallback? stopAndShow;
  const PauseAndSubmitWidget({
    required this.pause,
    required this.stopAndShow,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: pause,
            child: Container(
              margin: const EdgeInsets.all(20).copyWith(top: 0),
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: context.theme.primary,
              ),
              child: Center(
                child: Icon(
                  Icons.pause,
                  color: context.theme.backround,
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButtonWidget(
                name: "Submit", onPressed: stopAndShow, isLoading: false),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
