import 'package:flutter/material.dart';
import 'package:kevell_care_dr/features/profile/presentation/widgets/listtile_widget.dart';

import '../../../configure/assets_manage/icons.dart';

class FAQ extends StatelessWidget {
  const FAQ({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTileWidget(
      iconName: AppIcons.question,
      titleName: "FAQ",
    );
  }
}
