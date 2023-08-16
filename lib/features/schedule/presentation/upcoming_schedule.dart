import 'dart:developer';

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
    return BlocConsumer<ScheduleBloc, ScheduleState>(
      listener: (context, stated) async {
        if (stated.isDeleted) {
          log("Deleted succsessfully");

         
        }
      },
      buildWhen: (previous, current) {
        return previous != current;
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingWIdget();
        }
        if (state.isError) {
          return const AppErrorWidget();
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
                  isTodays: false,
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
