import 'package:flutter/material.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';
import 'package:kevell_care_dr/features/chat/presentation/chating_list_widget.dart';
import 'package:kevell_care_dr/features/widgets/avatar/active_avatar.dart';

class ChatingScreen extends StatelessWidget {
  static const routeName = '/chating-screen';
  const ChatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10,
        leadingWidth: 30,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Icon(
              Icons.chevron_left,
              color: context.theme.primary,
            ),
          ),
        ),
        backgroundColor: context.theme.secondary,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
             const  ActiveAvatar(radius: 25,imageUrl: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",),
              const SizedBox(width: 10),
              Text(
                "Eleanor Pena",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: context.theme.textPrimary),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_horiz,
              color: context.theme.textPrimary,
            ),
          )
        ],
      ),
      body: const ChatingListWidget(),
    );
  }
}
