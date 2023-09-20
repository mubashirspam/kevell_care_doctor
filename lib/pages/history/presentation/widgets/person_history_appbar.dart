import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

class PersonHistoryAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String name;
  const PersonHistoryAppBar({
    super.key,
    required this.name,
  });
  @override
  Size get preferredSize => const Size.fromHeight(110);
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
        title: Text(
          name,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        bottom: TabBar(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  color: context.theme.primary!.withOpacity(0.5),
                  blurRadius: 12,
                  offset: const Offset(1, 2))
            ],
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                context.theme.primary!,
                context.theme.primary!.withOpacity(0.7),
              ],
            ),
          ),
          labelColor: context.theme.textPrimary!,
          unselectedLabelColor: context.theme.primary!,
          automaticIndicatorColorAdjustment: false,
          dragStartBehavior: DragStartBehavior.start,
          labelStyle: TextStyle(
              color: context.theme.textPrimary, fontWeight: FontWeight.bold),
          dividerColor: context.theme.primary!,
          indicatorColor: context.theme.primary!,
          unselectedLabelStyle: Theme.of(context).textTheme.titleLarge,
          indicatorWeight: 5,
          tabs: const <Tab>[
            Tab(
              child: Text(
                "Health",
              ),
            ),
            Tab(
              child: Text("Reports"),
            )
          ],
        ));
  }
}
