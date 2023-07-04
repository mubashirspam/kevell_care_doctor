import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

class ReportScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ReportScreenAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.theme.secondary),
            child: Center(
              child: Icon(
                Icons.chevron_left,
                color: context.theme.primary,
              ),
            ),
          ),
        ),
        backgroundColor: context.theme.backround,
        centerTitle: false,
        title: Column(
          children: [
            Text(
              "Medical Reports",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "02/04/2022, Sartuday",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ));
  }
}
