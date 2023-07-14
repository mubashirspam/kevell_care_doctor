import 'package:flutter/material.dart';
import 'package:dr_kevell/features/checkup/presentation/widgets/checkup_card.dart';

class StethoscopeWidget extends StatelessWidget {
  const StethoscopeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CheckupCard(
      // imageName: "imageName",
      name: "Stethoscope",
      onPress: () {},
      children: [
        SizedBox(
          child: Row(
            children: [
              const CircleAvatar(),
              Expanded(
                child: Container(
                  height: 25,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(1.00, 0.00),
                      end: Alignment(-1, 0),
                      colors: [
                        Color(0xFFE4E4E4),
                        Color(0xFF0BFF00),
                        Color(0xFF6CFF00),
                        Color(0xFFEDFF00),
                        Color(0xFFFFCE00),
                        Color(0xFFFF7000),
                        Color(0x00C4C4C4)
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
