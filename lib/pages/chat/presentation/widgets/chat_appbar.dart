import 'package:flutter/material.dart';

import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({
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
        "Chat",
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.search,
              color: context.theme.primary,
              size: 30,
            )),
      ],
    );
  }
}
