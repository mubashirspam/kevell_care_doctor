import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kevell_care_dr/configure/assets_manage/icons.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

class ScheduleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ScheduleAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.theme.backround,
      centerTitle: false,
      title: Text(
        "My Schedule",
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: SvgPicture.asset(
            AppIcons.scheduleFilter,
            width: 30,
          ),
        ),
      ],
    );
  }
}
