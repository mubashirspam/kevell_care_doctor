import 'package:dr_kevell/features/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/features/schedule/presentation/widgets/schedule_card_itm.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/cards/schedule_your_time_lead_widget.dart';
import '../../widgets/error_widget.dart';
import '../data/models/schedule_model.dart';
import 'bloc/schedule_bloc.dart';

class NotApprovedSchedule extends StatelessWidget {
  const NotApprovedSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScheduleBloc, ScheduleState>(
      listener: (context, state) {
        if (state.isUpdated) {
          Navigator.of(context, rootNavigator: true).pop();
          context.read<ScheduleBloc>().add(
                const ScheduleEvent.getSchedule(),
              );
        }
      },
      builder: (context, state) {
        if (state.isLoading && !state.hasData) {
          return const LoadingWIdget();
        }

        if (state.isError) {
          return const AppErrorWidget();
        }
        if (state.hasData && state.isLoading || state.hasData) {
          ScheduleModel result = context.read<ScheduleBloc>().state.result!;

          if (result.data!.notapprove?.isEmpty ?? true) {
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
            return SingleChildScrollView(
              child: Column(
                children:
                    List.generate(result.data!.notapprove!.length, (index) {
                  return ScheduleCard(
                    isDeleteLoading: state.isDeleteLoading,
                    isTodays: false,
                    schedule: result.data!.notapprove![index],
                  );
                }),
              ),
            );
          }
        }
        return const ScheduleYourTimeLeadingWidget();
      },
    );
  }
}
