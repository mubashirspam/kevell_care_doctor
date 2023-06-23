import 'package:flutter/material.dart';
import 'package:kevell_care_dr/configure/assets_manage/images.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';
import 'package:kevell_care_dr/features/home/presentation/search.dart';
import 'package:kevell_care_dr/features/home/presentation/status_cards.dart';
import 'package:kevell_care_dr/features/home/presentation/waiting_patient.dart';

import 'package:sliver_tools/sliver_tools.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: CustomScrollView(
        slivers: [
          MultiSliver(
            children: [
              ColoredBox(
                color: context.theme.primary!,
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    Expanded(
                        child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello,",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                    color: context.theme.backround,
                                    fontSize: 16),
                          ),
                          Text(
                            "Doctor, \nJohn Doe",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                    color: context.theme.backround,
                                    fontSize: 35),
                          )
                        ],
                      ),
                    )),
                    Expanded(
                        child: SizedBox(
                      child: Image.asset(
                        AppImg.doctor,
                        height: 200,
                      ),
                    )),
                  ],
                ),
              ),
              const SliverPinnedHeader(child: SearchWidget()),
              MultiSliver(children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF0095F7), Color(0xFFD3B7F6)],
                      begin: Alignment(0, 0),
                      end: Alignment(1, 0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: context.theme.backround,
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Text(
                          "Schedule your time today",
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: context.theme.backround,
                                  ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: context.theme.backround,
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: StatusCards(color: [
                          Color(0xFFB9F8DB),
                          Color(0xFF44EC9F),
                        ], statusName: "You attended the patients"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: StatusCards(color: [
                          Color(0xFFDEC9F8),
                          Color(0xFFA76EEC),
                        ], statusName: "Today your attending patients"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  child: Text(
                    "Waiting patients",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                // const SizedBox(height: 15),
              ]),
            ],
          ),
          const WaitingPatient()
        ],
      ),
    );
  }
}