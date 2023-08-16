import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

import '../../../../configure/assets_manage/icons.dart';

class ScheduleCard extends StatelessWidget {
  final bool isUpcoming;
  const ScheduleCard({
    super.key,
    required this.isUpcoming,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(
        bottom: 15,
      ),
      elevation: 0,
      color: context.theme.secondary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 5, right: 15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.theme.primary,
              ),
              child: const Center(
                child: Text(
                  "03 \nApr ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "13.00-15.00",
                      style: TextStyle(
                        color: context.theme.textPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Patient Consultant",
                      style: TextStyle(
                        color: context.theme.textPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SvgPicture.asset(AppIcons.edit),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SvgPicture.asset(AppIcons.delete),
            ),
          ],
        ),
      ),
    );
  }
}





// leading: Container(
          

//  title: Text(
//           "13.00-15.00",
//           style: TextStyle(
//             color: context.theme.textPrimary,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         subtitle: Text(
//           "Patient Consultant",
//           style: TextStyle(
//             color: context.theme.textPrimary,
//           ),
//         ),
        // trailing: SizedBox(
        //   child: Row(
        //     children: [
        //       SvgPicture.asset(AppIcons.edit),
        //       SvgPicture.asset(AppIcons.delete),
        //     ],
        //   ),
//         ),
