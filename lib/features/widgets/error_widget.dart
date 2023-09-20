import 'package:flutter/material.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Center(
          child: Text(
        "Check Internet",
        style: Theme.of(context).textTheme.titleLarge,
      )),
    );
  }
}
