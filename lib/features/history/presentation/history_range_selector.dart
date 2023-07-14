import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/helper/date.dart';
import '../../widgets/input_field/date_filed.dart';
import 'bloc/history_bloc.dart';

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
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              if (state.hasPatientListData) {
                return SizedBox(
                  child: Row(
                    children: [
                      DateField(
                        onDateTimeChanged: (v) {
                          log(dateFormatToYYYYMMdd(v));
                          context.read<HistoryBloc>().add(
                              HistoryEvent.gePatientHistoryList(
                                  fromDate: dateFormatToYYYYMMdd(v),
                                  toDate:
                                      dateFormatToYYYYMMdd(DateTime.now())));

                          Navigator.of(context).pop();
                        },
                        initialDate: state.patientListResult!.data!.startDate ??
                            DateTime.now(),
                      ),
                      const SizedBox(width: 15),
                      DateField(
                        onDateTimeChanged: (v) {
                          // log(v.toIso8601String());
                          // context.read<HistoryBloc>().add(
                          //     HistoryEvent.gePatientHistoryList(
                          //         fromDate:
                          //             dateFormatToYYYYMMdd(DateTime.now()),
                          //         toDate:
                          //             dateFormatToYYYYMMdd(v)));
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
                      onDateTimeChanged: (v) {},
                      initialDate: DateTime.now(),
                    ),
                    const SizedBox(width: 15),
                    DateField(
                      onDateTimeChanged: (v) {},
                      initialDate: DateTime.now(),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
