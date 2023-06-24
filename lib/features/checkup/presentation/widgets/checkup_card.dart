import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

class CheckupCard extends StatelessWidget {
  final String name;
  final List<Widget> children;
  final VoidCallback onPress;
  final String imageName;
  const CheckupCard({
    super.key,
    required this.children,
    required this.imageName,
    required this.name,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20).copyWith(top: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF44EC9F),
            Color(0xFFB9F8DB),
          ],
        ),
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(
            child: Row(
              children: [
                CircleAvatar(
                  minRadius: 25,
                  maxRadius: 25,
                  backgroundImage: NetworkImage(imageName),
                  backgroundColor: context.theme.secondary,
                ),
                const SizedBox(width: 15),
                Expanded(
                    child: Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontSize: 24),
                )),
                CircleAvatar(
                  minRadius: 25,
                  maxRadius: 25,
                  backgroundColor: context.theme.primary,
                  child: const Center(
                    child: Icon(Icons.play_arrow),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: children,
            ),
          )
        ],
      ),
    );
  }
}
