import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../../../settings/color/main_color.dart';
import '../../data/model/chat_person_model.dart';

class ChatPersonCard extends StatelessWidget {
  final Result result;

  final int? count;
  const ChatPersonCard({
    super.key,
    required this.result,
  
    this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 15),
      padding: const EdgeInsets.all(15),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffBDE5FF),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                maxRadius: 25,
                minRadius: 25,
                backgroundImage: NetworkImage(result.profileImagelink ?? ""),
              ),
              Positioned(
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
            ],
          ),
          const SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                result.username ?? "",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 5),
              Text(
                "General Checkup",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const Spacer(),
          count == null
              ? const SizedBox()
              : Container(
                  padding: const EdgeInsets.all(1),
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: context.theme.primary,
                  ),
                  child: Center(
                    child: Text(
                      count! > 9 ? "9+" : '$count',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
