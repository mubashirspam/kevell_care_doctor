import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dr_kevell/settings/assets_manage/icons.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/schedule/presentation/pages/schedule_your_time.dart';

class ScheduleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ScheduleAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.theme.secondary,
      centerTitle: false,
    leading:const SizedBox(),
      leadingWidth: 1,
      title: Text(
        "My Schedule",
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(color: context.theme.textPrimary),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: SvgPicture.asset(
            AppIcons.scheduleFilter,
            width: 30,
            color: context.theme.textPrimary,
          ),
        ),
      ],
    );
  }
}

class ScheduleFloatingButton extends StatelessWidget {
  const ScheduleFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: context.theme.primary,
      onPressed: () {
        Navigator.of(context).pushNamed(ScheduleYourTime.routeName);
      },
      child: Icon(
        Icons.calendar_month,
        color: context.theme.backround,
      ),
    );
  }
}
