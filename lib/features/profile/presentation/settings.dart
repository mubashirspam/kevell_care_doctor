import 'package:flutter/material.dart';
import 'package:kevell_care_dr/features/profile/presentation/widgets/listtile_widget.dart';

import '../../../configure/assets_manage/icons.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTileWidget(
      iconName: AppIcons.settings,
      titleName: "Setting",
    );
  }
}
