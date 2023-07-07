import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';
import 'package:kevell_care_dr/features/profile/presentation/edit_profile.dart';

import '../../../features/profile/presentation/view_my_profile.dart';
import '../../../features/widgets/buttons/text_button_widget.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const ViewMyProfile(),
              const Spacer(),
              TextButtonWidget(
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => const EditMyProfile(),
                  );
                },
                name: "Edit Profile",
                isLoading: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
