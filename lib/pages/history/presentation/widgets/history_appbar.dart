import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../../../configure/assets_manage/icons.dart';
import '../../../../features/widgets/input_field/search_field.dart';

class HistoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HistoryAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 0,
      backgroundColor: context.theme.primary,
      centerTitle: false,
      title: const Row(
        children: [
          Expanded(
              child: SearchField(
            margin: 10,
          ))
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: SvgPicture.asset(
            AppIcons.scheduleFilter,
            colorFilter: ColorFilter.mode(
              context.theme.backround!,
              BlendMode.lighten,
            ),
            width: 30,
          ),
        ),
      ],
    );
  }
}
