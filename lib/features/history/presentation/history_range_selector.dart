import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/helper/date.dart';
import '../../widgets/input_field/date_filed.dart';
import 'bloc/history_bloc.dart';
import 'history_range_card.dart';

class HistoryRangeSelector extends StatelessWidget {
  const HistoryRangeSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.maxFinite,
      decoration: ShapeDecoration(
        color: context.theme.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            child: Row(
              children: [
                Expanded(
                  child: Text("From"),
                ),
                Expanded(
                  child: Text("To"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          BlocConsumer<HistoryBloc, HistoryState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state.hasPatientListData) {
                log("ffff ;;  ${state.patientListResult!.data!.patients!.first.appointmentDate}");
                return SizedBox(
                  child: Row(
                    children: [
                      DateField(
                        firstDate: state.patientListResult!.data!.patients!.first.appointmentDate!,
                        selectedTime: state.startDate,
                        onDateTimeChanged: (v) {
                          context.read<HistoryBloc>().add(HistoryEvent.pickDate(
                            historyType: HistoryType.other,
                                endDate: state.endDate,
                                startDate: v,
                              ));

                          log(dateFormatToYYYYMMdd(v));
                          context.read<HistoryBloc>().add(
                              HistoryEvent.gePatientHistoryList(
                                  fromDate:
                                      dateFormatToYYYYMMdd(state.startDate),
                                  toDate: dateFormatToYYYYMMdd(state.endDate)));

                          Navigator.of(context).pop();
                        },
                        initialDate: DateTime.now(),
                      ),
                      const SizedBox(width: 10),
                      DateField(
                        firstDate: state.patientListResult!.data!.patients!.first.appointmentDate!,
                        selectedTime: state.endDate,
                        onDateTimeChanged: (v) {
                          context.read<HistoryBloc>().add(HistoryEvent.pickDate(
                              historyType: HistoryType.other,
                                endDate: v,
                                startDate: state.endDate,
                              ));
                          log(v.toIso8601String());
                          context.read<HistoryBloc>().add(
                              HistoryEvent.gePatientHistoryList(
                                  fromDate:
                                      dateFormatToYYYYMMdd(state.startDate),
                                  toDate: dateFormatToYYYYMMdd(state.endDate)));
                          Navigator.of(context).pop();
                        },
                        initialDate: DateTime.now(),
                      ),
                    ],
                  ),
                );
              }
              return SizedBox(
                child: Row(
                  children: [
                    DateField(
                      firstDate: DateTime.now(),
                      selectedTime: DateTime.now(),
                      onDateTimeChanged: (v) {
                        context.read<HistoryBloc>().add(HistoryEvent.pickDate(
                            historyType: HistoryType.other,
                              endDate: state.endDate,
                              startDate: v,
                            ));

                        log(dateFormatToYYYYMMdd(v));
                        context.read<HistoryBloc>().add(
                            HistoryEvent.gePatientHistoryList(
                                fromDate: dateFormatToYYYYMMdd(state.startDate),
                                toDate: dateFormatToYYYYMMdd(state.endDate)));

                        Navigator.of(context).pop();
                      },
                      initialDate: DateTime.now(),
                    ),
                    const SizedBox(width: 10),
                    DateField(
                      firstDate: DateTime.now(),
                      selectedTime: DateTime.now(),
                      onDateTimeChanged: (v) {
                        context.read<HistoryBloc>().add(HistoryEvent.pickDate(
                            historyType: HistoryType.other,
                              endDate: v,
                              startDate: state.endDate,
                            ));
                        log(v.toIso8601String());
                        context.read<HistoryBloc>().add(
                            HistoryEvent.gePatientHistoryList(
                                fromDate: dateFormatToYYYYMMdd(state.startDate),
                                toDate: dateFormatToYYYYMMdd(state.endDate)));
                        Navigator.of(context).pop();
                      },
                      initialDate: DateTime.now(),
                    ),
                  ],
                ),
              );
            },
          ),
          const HistoryRangeCard()
        ],
      ),
    );
  }
}
