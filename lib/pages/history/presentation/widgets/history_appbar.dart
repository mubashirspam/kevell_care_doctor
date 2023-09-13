import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../../../settings/assets_manage/icons.dart';

// class HistoryAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const HistoryAppBar({
//     super.key,
//   });
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       leadingWidth: 0,
//       backgroundColor: context.theme.primary,
//       centerTitle: false,
//       title: const Row(
//         children: [
//           Expanded(
//               child: SearchField(
//             margin: 10,
//           ))
//         ],
//       ),
//       actions: [
//         Padding(
//           padding: const EdgeInsets.only(right: 15),
//           child: SvgPicture.asset(
//             AppIcons.scheduleFilter,
//             colorFilter: ColorFilter.mode(
//               context.theme.backround!,
//               BlendMode.lighten,
//             ),
//             width: 30,
//           ),
//         ),
//       ],
//     );
//   }
// }
class HistoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HistoryAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.theme.primary,
      centerTitle: false,
      title: Text(
        "Paitent History",
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
