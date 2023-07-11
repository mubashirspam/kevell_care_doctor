import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care_dr/features/home/presentation/bloc/home_bloc.dart';
import 'package:kevell_care_dr/features/widgets/error_widget.dart';
import 'package:kevell_care_dr/features/widgets/loading_widget.dart';

import 'widgets/status_cards.dart';

class StatusCardWidget extends StatelessWidget {
  const StatusCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.isStatusLoading) {
          return const Center(child: LoadingWIdget());
        } else if (state.hasStatusData) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              children: [
                Expanded(
                  child: StatusCards(
                      count: state.statusResult!.data!.status!.first.count
                          .toString(),
                      color: const [
                        Color(0xFFB9F8DB),
                        Color(0xFF44EC9F),
                      ],
                      statusName: state.statusResult!.data!.status!.first.name.toString()),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: StatusCards(
                      count: state.statusResult!.data!.status![1].count.toString(),
                      color: const [
                        Color(0xFFDEC9F8),
                        Color(0xFFA76EEC),
                      ],
                      statusName: state.statusResult!.data!.status![1].name.toString()),
                ),
              ],
            ),
          );
        } else if (state.isError) {
          return const AppErrorWidget();
        }
        return const SizedBox(height: 20);
      },
    );
  }
}