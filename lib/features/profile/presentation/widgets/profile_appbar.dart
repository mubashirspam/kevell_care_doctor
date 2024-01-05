import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:const SizedBox(),
      leadingWidth: 1,
      backgroundColor: context.theme.backround,
      centerTitle: false,
      title: Text(
        "Profile",
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}
