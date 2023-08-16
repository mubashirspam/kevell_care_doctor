import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../configure/assets_manage/lottie.dart';

class LoadingWIdget extends StatelessWidget {
  const LoadingWIdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        height: 200,
        child: Center(child: Lottie.asset(AppLottie.loading)));
  }
}
