import 'package:flutter/material.dart';
import 'package:kevell_care_dr/features/profile/presentation/widgets/listtile_widget.dart';

import '../../../configure/assets_manage/icons.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTileWidget(
      iconName: AppIcons.bell,
      titleName: "Notifications",
    );
  }
}
