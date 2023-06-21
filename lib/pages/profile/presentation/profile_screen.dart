import 'package:flutter/material.dart';
import 'package:kevell_care_dr/features/login/presentation/logout.dart';
import 'package:kevell_care_dr/features/profile/presentation/about.dart';
import 'package:kevell_care_dr/features/profile/presentation/darkmood.dart';
import 'package:kevell_care_dr/features/profile/presentation/faq.dart';
import 'package:kevell_care_dr/features/profile/presentation/notification.dart';
import 'package:kevell_care_dr/features/profile/presentation/settings.dart';
import '../../../features/profile/presentation/my_profile.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> list = const [
      MyProfile(),
      Settings(),
      NotificationItem(),
      FAQ(),
      About(),
      DarkMode(),
    ];
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2960&q=80"))),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John Doe",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      "johndoe@gmail.com",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SizedBox(
                child: Column(
                  children: List.generate(
                    list.length,
                    (index) => list[index],
                  ),
                ),
              ),
            ),
            Logout()
          ],
        ),
      ),
    );
  }
}
