import 'package:flutter/material.dart';
import 'package:kevell_care_dr/configure/color/main_color.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';
import 'package:kevell_care_dr/features/widgets/avatar/active_avatar.dart';

import '../../../pages/videocall/presentation/one_to_one_meeting_screen.dart';

class CheckupHeaderWidget extends StatelessWidget {
  const CheckupHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: context.theme.primary,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const ActiveAvatar(
                isActive: false,
              ),
              const Spacer(),
              TextButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 10,
                      backgroundColor: context.theme.secondary,
                      foregroundColor: context.theme.primary),
                  onPressed: () {},
                  child: const Text("Patient History"))
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: MainConfigColorsDarkThem.success,
                              border: Border.all(
                                width: 2,
                                color: context.theme.backround!,
                              ),
                            ),
                          ),
                          Text(
                            "Online",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: context.theme.backround,
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Connected",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: context.theme.backround,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          offset: const Offset(0, 5))
                    ],
                    color: context.theme.secondary),
                child: Center(
                  child: Icon(
                    Icons.message,
                    color: context.theme.primary,
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.of(context)
                    .pushNamed(OneToOneMeetingScreen.routeName),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 15,
                            offset: const Offset(0, 5))
                      ],
                      borderRadius: BorderRadius.circular(100),
                      color: context.theme.secondary),
                  child: Center(
                    child: Icon(
                      Icons.video_call,
                      color: context.theme.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              "Case  history",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: context.theme.backround),
            ),
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis pharetra suspendisse nisl, et interdum. Morbi fames et justo, mauris, et, scelerisque in aenean odio. Sed egestas quis pellentesque consectetur leo, proin est, pellentesque lorem. In facilisis suspendisse asellus integer varius lectus iaculis dignissim. ",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: context.theme.backround, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
