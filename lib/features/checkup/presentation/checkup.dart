import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care_dr/core/helper/toast.dart';
import 'package:kevell_care_dr/core/them/custom_theme_extension.dart';

import 'bloc/checkup_bloc.dart';

class CheckupWidget extends StatelessWidget {
  const CheckupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Kit Check up status"),
              BlocConsumer<CheckupBloc, CheckupState>(
                listener: (context, state) {
                  if (state.isLoading) {
                    showDialog(
                      context: context,
                      builder: (context) => const AlertDialog(
                          title: Text("Unloacking..."),
                          content: LinearProgressIndicator()),
                    );
                  }
                  if (state.isServerConnected) {
                    Navigator.pop(context);
                    Toast.showToast(context: context, message: state.message);
                  }
                  if (state.error) {
                    Navigator.pop(context);
                    Toast.showToast(context: context, message: state.message);
                  }
                  if (state.isSucribed) {
                    Toast.showToast(context: context, message: state.message);
                  }
                },
                builder: (context, state) {
                  return Column(
                    children: [
                      Switch(
                        activeColor: context.theme.primary,
                        value: state.isServerConnected,
                        onChanged: (value) {
                          state.isServerConnected == false
                              ? context
                                  .read<CheckupBloc>()
                                  .add(const CheckupEvent.unlockKit())
                              : context
                                  .read<CheckupBloc>()
                                  .add(const CheckupEvent.lockKit());
                        },
                      ),
                      Text(state.message),
                    ],
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
