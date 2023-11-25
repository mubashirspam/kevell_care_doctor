

import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../../settings/color/main_color.dart';


class ActiveAvatar extends StatelessWidget {
  final double? radius;
  final bool? isActive;
  final String imageUrl;
  const ActiveAvatar({
    super.key,
    this.radius,
    this.isActive,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: radius ?? 60,
          width: radius ?? 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                imageUrl,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.image_not_supported_outlined),
              )),
        ),
        isActive ?? true
            ? Positioned(
                right: 2,
                top: 2,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: MainConfigColorsDarkThem.success,
                      border: Border.all(
                        width: 2,
                        color: context.theme.backround!,
                      )),
                ),
              )
            : const SizedBox()
      ],
    );
  }
}
