import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import '../../../../configure/assets_manage/icons.dart';
import '../../../../core/helper/date.dart';
import '../../data/models/schedule_model.dart';
import '../bloc/schedule_bloc.dart';

class ScheduleCard extends StatelessWidget {
  final Schedule schedule;

  final bool isTodays;

  const ScheduleCard({
    super.key,
    required this.schedule,
    required this.isTodays,
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
              margin: const EdgeInsets.only(left: 0, right: 15),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.theme.primary,
              ),
              child: Center(
                child: Text(
                  formatDateForSchedule(schedule.days!),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
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
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            text: "${extractTime(schedule.starttime!)} : ",
                            children: [
                              TextSpan(
                                text: extractTime(schedule.endtime!),
                              ),
                            ],
                          ),
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(fontSize: 16),
                        ),
                        const SizedBox(width: 5),
                        Chip(
                          backgroundColor: context.theme.primary,
                          label: Text(
                            "${schedule.dailylimitcount}",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      schedule.type!,
                      style: TextStyle(
                        color: context.theme.textPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            isTodays
                ? const SizedBox()
                : InkWell(onTap: () {}, child: SvgPicture.asset(AppIcons.edit)),
            BlocConsumer<ScheduleBloc, ScheduleState>(
              listener: (context, stated) async {
                if (stated.isDeleted) {
                  log("Deleted succsessfully");

                  context.read<ScheduleBloc>().add(
                        const ScheduleEvent.getSchedule(),
                      );
                }
              },
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: state.isDeleteLoading
                      ? SizedBox(
                          height: 15,
                          width: 15,
                          child: CupertinoActivityIndicator(
                            color: context.theme.primary,
                          ),
                        )
                      : InkWell(
                          onTap: () {
                            context.read<ScheduleBloc>().add(
                                  ScheduleEvent.deleteSchedule(
                                    id: schedule.id.toString(),
                                  ),
                                );
                          },
                          child: SvgPicture.asset(
                            AppIcons.delete,
                          ),
                        ),
                );
              },
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
