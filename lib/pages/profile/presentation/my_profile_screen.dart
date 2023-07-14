import 'package:flutter/material.dart';

import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../../features/profile/presentation/view_my_profile.dart';

class MyProfileScreen extends StatelessWidget {
  static const routeName = '/my-profile-screen';
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.theme.secondary),
            child: Center(
              child: Icon(
                Icons.chevron_left,
                color: context.theme.primary,
              ),
            ),
          ),
        ),
        backgroundColor: context.theme.backround,
        centerTitle: false,
        title: Text(
          "My Profile",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ViewMyProfile(),
        ),
      ),
    );
  }
}
