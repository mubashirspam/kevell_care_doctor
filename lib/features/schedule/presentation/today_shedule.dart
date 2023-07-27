import 'package:dr_kevell/features/widgets/error_widget.dart';
import 'package:dr_kevell/features/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/schedule/presentation/widgets/schedule_card_itm.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/schedule_bloc.dart';

class TodayeSchedule extends StatelessWidget {
  const TodayeSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleBloc, ScheduleState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingWIdget();
        }
        if (state.isError) {
          return const AppErrorWidget();
        }
        if (state.hasData) {
          return Column(
            children: List.generate(
              2,
              (index) => const ScheduleCard(isUpcoming: false),
            ),
          );
        }
        return Column(
          children: List.generate(
            2,
            (index) => const ScheduleCard(isUpcoming: false),
          ),
        );
      },
    );
  }
}
