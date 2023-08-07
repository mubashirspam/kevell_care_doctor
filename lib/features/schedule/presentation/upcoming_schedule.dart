import 'package:dr_kevell/features/widgets/error_widget.dart';
import 'package:dr_kevell/features/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/schedule/presentation/widgets/schedule_card_itm.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/cards/schedule_your_time_lead_widget.dart';
import '../data/models/schedule_model.dart';
import 'bloc/schedule_bloc.dart';

class UpcomingSchedule extends StatelessWidget {
  const UpcomingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleBloc, ScheduleState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingWIdget();
        }
        if (state.isError) {
          return const AppErrorWidget();
          // return Column(
          //   children: List.generate(
          //     3,
          //     (index) => ScheduleCard(
          //       isUpcoming: false,
          //       schedule: Schedule(
          //           date: DateTime.now(),
          //           duration: "13.00-15.00",
          //           type: "patient_consult",
          //           dailylimitcount: "3"),
          //     ),
          //   ),
          // );
        }
        if (state.hasData) {
          ScheduleModel result = context.read<ScheduleBloc>().state.result!;

          if (result.data!.upcomingschedule?.isEmpty ?? true) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "No Schedule Found",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                const ScheduleYourTimeLeadingWidget()
              ],
            );
          } else {
            return Column(
              children: List.generate(
                result.data!.upcomingschedule!.length,
                (index) => ScheduleCard(
                  isUpcoming: false,
                  schedule: result.data!.upcomingschedule![index],
                ),
              ),
            );
          }
        }
        return const ScheduleYourTimeLeadingWidget();
      },
    );
  }
}
