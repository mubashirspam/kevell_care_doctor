import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_kevell/features/home/presentation/bloc/home_bloc.dart';
import 'package:dr_kevell/features/widgets/error_widget.dart';
import 'package:dr_kevell/features/widgets/loading_widget.dart';

import '../../../settings/value/constant.dart';
import '../../../settings/value/secure_storage.dart';
import '../../../core/helper/toast.dart';
import '../../../pages/initialize/initialize.dart';
import 'widgets/status_cards.dart';

class StatusCardWidget extends StatelessWidget {
  const StatusCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) async {
        if (state.unauthorized) {
          Toast.showToast(
            context: context,
            message: "Unauthrized",
          );
          await deleteFromSS(secureStoreKey)
              .then((value) => Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const Initialize(),
                    ),
                    (route) => false,
                  ));
        } else if (state.isError) {
          Toast.showToast(context: context, message: "Network Error");
        }
      },
      builder: (context, state) {
        if (state.isStatusLoading) {
          return const Center(child: LoadingWIdget());
        } else if (state.hasStatusData) {
          if (state.statusResult!.data!.status!.isEmpty) {
            return SizedBox(
              height: 50,
              child: Center(
                child: Text(
                  "No data Found 😖",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            );
          }
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
                      statusName: state.statusResult!.data!.status!.first.name
                          .toString()),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: StatusCards(
                      count:
                          state.statusResult!.data!.status![1].count.toString(),
                      color: const [
                        Color(0xFFDEC9F8),
                        Color(0xFFA76EEC),
                      ],
                      statusName:
                          state.statusResult!.data!.status![1].name.toString()),
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
