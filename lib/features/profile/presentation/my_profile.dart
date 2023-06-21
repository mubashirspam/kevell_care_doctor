import 'package:flutter/material.dart';
import 'package:kevell_care_dr/features/profile/presentation/widgets/listtile_widget.dart';
import 'package:kevell_care_dr/pages/profile/presentation/my_profile_screen.dart';

import '../../../configure/assets_manage/icons.dart';



class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTileWidget(
      onTap: () => Navigator.of(context).pushNamed(MyProfileScreen.routeName),
      iconName: AppIcons.profileP,
      titleName: "My Profile",
    );
  }
}

