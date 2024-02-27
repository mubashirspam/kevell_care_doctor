import 'dart:developer';

import 'package:dr_kevell/core/helper/alert.dart';
import 'package:dr_kevell/core/helper/toast.dart';
import 'package:dr_kevell/features/schedule/domain/entities/create_schedule.dart';
import 'package:dr_kevell/features/schedule/presentation/widgets/counter_widget.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/widgets/calender/range_calnder.dart';
import 'package:dr_kevell/features/schedule/presentation/widgets/range_time.dart';
import 'package:dr_kevell/features/widgets/buttons/text_button_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../../settings/value/constant.dart';
import '../../../settings/value/secure_storage.dart';
import '../../../core/helper/date.dart';
import 'bloc/schedule_bloc.dart';

class ScheduleYourTimeWidget extends StatelessWidget {
  const ScheduleYourTimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<ScheduleBloc, ScheduleState>(
            builder: (context, state) {
              return RangeCalnderWidget(
                onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                  // log(args.value.toString());

                  if (args.value is PickerDateRange) {
                    final DateTime? startDate =
                        (args.value as PickerDateRange).startDate;
                    final DateTime? endDate =
                        (args.value as PickerDateRange).endDate;

                    context.read<ScheduleBloc>().add(ScheduleEvent.pickDate(
                          endDate: endDate ?? state.endDate,
                          startDate: startDate ?? state.endDate,
                        ));
                  }
                },
                function: (DateTime startdate) {},
              );
            },
          ),
          BlocBuilder<ScheduleBloc, ScheduleState>(
            builder: (context, state) {
              return Container(
                width: double.maxFinite,
                margin: const EdgeInsets.only(top: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: context.theme.secondary),
                child: Center(
                  child: Text(
                    "${dateFormatToddmmyyyy(state.startDate)}  TO  ${dateFormatToddmmyyyy(state.endDate)}",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: context.theme.textPrimary, fontSize: 18),
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              "Select time",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: context.theme.textPrimary),
            ),
          ),
          const DateRanger(),
          SizedBox(
            height: 70,
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
          Row(
            children: [
              const Expanded(child: SizedBox()),
              Expanded(
                  flex: 2,
                  child: TextButtonWidget(
                      bgColor: context.theme.backround,
                      fgColor: context.theme.textPrimary,
                      name: "Cancel",
                      onPressed: () {},
                      isLoading: false)),
              Expanded(
                  flex: 2,
                  child: BlocConsumer<ScheduleBloc, ScheduleState>(
                    listener: (context, state) {
                      if (state.isCreated) {
                        log("Created Sucsessfully");
                        Navigator.of(context).pop();
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return SuccessDialog(
                              message:
                                  "Your appointment is scheduled. Visit the 'Schedule' page for rescheduling or deleting today's appointments, while you can edit or reschedule future appointments",
                              onpress: () {
                                Navigator.of(context).pop();
                                context
                                    .read<ScheduleBloc>()
                                    .add(const ScheduleEvent.getSchedule());
                              },
                            );
                          },
                        );

                        // selectedIndexNorifier.value == 1;
                      }
                      if (state.isError &&
                          !state.isCreateLoading &&
                          !state.isCreated) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const ErrorDialog(
                              message:
                                  "Already Scheduled Your Time with selected date please select diffrent date",
                            );
                          },
                        );
                      }
                    },
                    builder: (context, state) {
                      return TextButtonWidget(
                        fgColor: Colors.white,
                        name: "Schedule",
                        onPressed: () async {
                          await getTokenFromSS(drIdsecureStoreKey)
                              .then((value) {
                            if (value != null) {
                              final id = int.parse(value);

                              Duration difference =
                                  state.endDate.difference(state.startDate);
                              if (difference.inDays < 5) {
                                context.read<ScheduleBloc>().add(
                                      ScheduleEvent.createSchedule(
                                        schedulePayload: SchedulePayload(
                                            dailyLimitCount: state
                                                .numberOfPatient
                                                .toString(),
                                            startDate: state.startDate,
                                            endDate: state.endDate,
                                            startTime: state.startTime,
                                            endTime: state.endTime,
                                            doctorId: id,
                                            amount: "100",
                                            timePerPatient:
                                                state.timeForSinglePatient,
                                            type: "patient_consult"),
                                      ),
                                    );
                              } else {
                                Toast.showToast(
                                    context: context,
                                    message:
                                        "Date range shuld be lesserthan 5");
                              }
                            } else {}
                          });
                        },
                        isLoading: state.isCreateLoading,
                      );
                    },
                  )),
            ],
          )
        ],
      ),
    );
  }
}
