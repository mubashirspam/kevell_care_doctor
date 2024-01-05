import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dr_kevell/settings/assets_manage/icons.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.theme.primary,
      centerTitle: false,
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
