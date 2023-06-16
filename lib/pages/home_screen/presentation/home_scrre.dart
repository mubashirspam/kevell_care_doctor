import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Stack(
              children: [
                SizedBox(height: 300),
                Placeholder(
                  color: Colors.red,
                  fallbackHeight: 250,
                ),
                Positioned(
                  bottom: 25,
                  child: Placeholder(
                    color: Colors.blue,
                    fallbackHeight: 50,
                  ),
                ),
              ],
            ),
            const Placeholder(
              fallbackHeight: 50,
            ),
            const Row(
              children: [
                Expanded(
                  child: Placeholder(
                    color: Colors.green,
                    fallbackHeight: 100,
                  ),
                ),
                Expanded(
                  child: Placeholder(
                    color: Colors.green,
                    fallbackHeight: 100,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            const Text("Waiting patients"),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffBDE5FF),
              ),
              child: Row(
                children: [
                 const CircleAvatar(),
                  Column(
                    children: [
                      const Text("Johnny Greig"),
                      const Text("General Checkup"),
                      const Text("Johnny Greig"),
                    ],
                  ),
                  Spacer(),
                  TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: context.theme.primary,
                      ),
                      onPressed: () => context.go('/patient_checkup'),
                      child: Text(
                        "Attand",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
