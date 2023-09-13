import 'package:flutter/material.dart';
import 'package:dr_kevell/features/profile/presentation/widgets/listtile_widget.dart';
import 'package:dr_kevell/pages/profile/presentation/my_profile_screen.dart';

import '../../../settings/assets_manage/icons.dart';

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
