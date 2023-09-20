import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

class ListTileWidget extends StatelessWidget {
  final String iconName;
  final String titleName;
  final VoidCallback? onTap;
  const ListTileWidget({
    super.key,
    required this.iconName,
    required this.titleName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ListTile(
            onTap: onTap,
            contentPadding: const EdgeInsets.only(bottom: 0),
            minLeadingWidth: 20,
            leading: SvgPicture.asset(iconName),
            title: Text(
              titleName,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.normal),
            ),
          ),
          Divider(
            color: context.theme.textGrey,
          )
        ],
      ),
    );
  }
}
