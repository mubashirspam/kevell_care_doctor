import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helper/date.dart';
import 'bloc/history_bloc.dart';

class HistoryRangeCard extends StatelessWidget {
  const HistoryRangeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HistoryBloc, HistoryState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Row(children: [
          Expanded(
            child: FilterCountCard(
              isActive: state.historyType == HistoryType.all ? true : false,
              onPress: () {
                context.read<HistoryBloc>().add(HistoryEvent.pickDate(
                      historyType: HistoryType.all,
                      endDate: DateTime.now(),
                      startDate: state.patientListResult!.data == null
                          ? DateTime.now()
                          : state.patientListResult!.data!.patients!.first.appointmentDate!,
                    ));

                    // need start date

                context.read<HistoryBloc>().add(
                    HistoryEvent.gePatientHistoryList(
                        fromDate: dateFormatToYYYYMMdd(state.startDate),
                        toDate: dateFormatToYYYYMMdd(state.endDate)));
              },
              count:
                  "${state.patientListResult == null ? 0 : state.patientListResult!.data!.allCount ?? 0}",
              name: "All",
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: FilterCountCard(
              isActive: state.historyType == HistoryType.today ? true : false,
              onPress: () {
                context.read<HistoryBloc>().add(HistoryEvent.pickDate(
                      historyType: HistoryType.today,
                      endDate: DateTime.now(),
                      startDate: DateTime.now(),
                    ));

                context.read<HistoryBloc>().add(
                    HistoryEvent.gePatientHistoryList(
                        fromDate: dateFormatToYYYYMMdd(state.startDate),
                        toDate: dateFormatToYYYYMMdd(state.endDate)));
              },
              count:
                  "${state.patientListResult == null ? 0 : state.patientListResult!.data!.todayCount ?? 0}",
              name: "Today",
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: FilterCountCard(
              isActive:
                  state.historyType == HistoryType.lastWeek ? true : false,
              onPress: () {
                context.read<HistoryBloc>().add(HistoryEvent.pickDate(
                      historyType: HistoryType.lastWeek,
                      startDate:
                          DateTime.now().subtract(const Duration(days: 7)),
                      endDate: DateTime.now(),
                    ));

                context.read<HistoryBloc>().add(
                    HistoryEvent.gePatientHistoryList(
                        fromDate: dateFormatToYYYYMMdd(state.startDate),
                        toDate: dateFormatToYYYYMMdd(state.endDate)));
              },
              count:
                  "${state.patientListResult == null ? 0 : state.patientListResult!.data!.weekCount ?? 0}",
              name: "Last week",
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: FilterCountCard(
              isActive:
                  state.historyType == HistoryType.currentMonth ? true : false,
              onPress: () {
                context.read<HistoryBloc>().add(HistoryEvent.pickDate(
                      historyType: HistoryType.currentMonth,
                      startDate:
                          DateTime.now().subtract(const Duration(days: 30)),
                      endDate: DateTime.now(),
                    ));

                context.read<HistoryBloc>().add(
                      HistoryEvent.gePatientHistoryList(
                        fromDate: dateFormatToYYYYMMdd(state.startDate),
                        toDate: dateFormatToYYYYMMdd(state.endDate),
                      ),
                    );
              },
              count:
                  "${state.patientListResult == null ? 0 : state.patientListResult!.data!.monthCount ?? 0}",
              name: "Current month",
            ),
          ),
        ]);
      },
    );
  }
}

class FilterCountCard extends StatelessWidget {
  final String name;
  final String count;
  final bool isActive;
  final VoidCallback onPress;

  const FilterCountCard({
    super.key,
    required this.count,
    required this.isActive,
    required this.name,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 10),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: isActive ? context.theme.backround : context.theme.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(name,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 14,
                    color: !isActive
                        ? context.theme.textPrimary
                        : context.theme.primary)),
            const SizedBox(
              height: 10,
            ),
            Text(count,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: !isActive
                        ? context.theme.textPrimary
                        : context.theme.primary)),
          ],
        ),
      ),
    );
  }
}
