import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/schedule/domain/entities/update_schedule.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/buttons/text_button_widget.dart';
import '../data/models/schedule_model.dart';
import 'bloc/schedule_bloc.dart';
import 'widgets/counter_widget.dart';
import 'widgets/range_time.dart';

class EditScheduleWidget extends StatelessWidget {
  final Schedule schedule;

  const EditScheduleWidget({
    super.key,
    required this.schedule,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ScheduleBloc>().add(ScheduleEvent.pickTime(
            endTime: schedule.endtime!,
            startTime: schedule.starttime!,
          ));
    });

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: context.theme.backround),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DateRanger(),
              const SizedBox(height: 20),
              SizedBox(
                child: Center(
                  child: BlocBuilder<ScheduleBloc, ScheduleState>(
                    builder: (context, state) {
                      return CounterWidget(
                        value: "${state.numberOfPatient}",
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              BlocBuilder<ScheduleBloc, ScheduleState>(
                builder: (context, state) {
                  return Text(
                    "Time Alloted for Each patient : ${state.timeForSinglePatient} MIN",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: context.theme.primary),
                  );
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                child: Row(
                  children: [
                    Expanded(
                      child: TextButtonWidget(
                        fgColor: context.theme.primary,
                        bgColor: context.theme.secondary,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        name: "Cancel",
                        isLoading: false,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: BlocConsumer<ScheduleBloc, ScheduleState>(
                        listener: (context, state) {
                          if (state.isUpdated &&
                              !state.isUpdateLoading &&
                              !state.hasData) {
                            // Navigator.pop(context);
                            context.read<ScheduleBloc>().add(
                                  const ScheduleEvent.getSchedule(),
                                );
                          }
                        },
                        builder: (context, state) {
                          return TextButtonWidget(
                            onPressed: () async {
                              if (!state.isUpdateLoading) {
                                context.read<ScheduleBloc>().add(
                                      ScheduleEvent.updateSchedule(
                                        schedulePayload: UpdateSchedulePayload(
                                          id: schedule.id.toString(),
                                          dailylimitcount:
                                              state.numberOfPatient.toString(),
                                          starttime: state.startTime,
                                          endtime: state.endTime,
                                          timeperPatient: state
                                              .timeForSinglePatient
                                              .toString(),
                                        ),
                                      ),
                                    );
                              }
                            },
                            name: "Update",
                            isLoading: state.isUpdateLoading,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
