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
          return const Center(
            child: LoadingWIdget(),
          );
        } else if (state.hasStatusData) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              children: [
                Expanded(
                  child: StatusCards(color: [
                    Color(0xFFB9F8DB),
                    Color(0xFF44EC9F),
                  ], statusName: "You attended the patients"),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: StatusCards(color: [
                    Color(0xFFDEC9F8),
                    Color(0xFFA76EEC),
                  ], statusName: "Today your attending patients"),
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
