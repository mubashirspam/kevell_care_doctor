import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../configure/assets_manage/lottie.dart';

class LoadingWIdget extends StatelessWidget {

  final double ? size;
  const LoadingWIdget({
    super.key,
    this.size

  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size?? 200,
        height: size??200,
        child: Center(child: Lottie.asset(AppLottie.loading)));
  }
}
