import 'package:dr_kevell/features/widgets/buttons/text_button_widget.dart';
import 'package:dr_kevell/features/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

import 'bloc/checkup_bloc.dart';

class UnloackWidget extends StatelessWidget {
  const UnloackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckupBloc, CheckupState>(
      listener: (context, state) {
        // if (state.isLoading) {
        //   showDialog(
        //     context: context,
        //     builder: (context) => const AlertDialog(
        //         title: Text("Unloacking..."),
        //         content: LinearProgressIndicator()),
        //   );
        // }
        // if (state.isConnected) {
        //   Navigator.pop(context);
        //   Toast.showToast(context: context, message: state.message);
        // }
        // if (state.error) {
        //   Navigator.pop(context);
        //   Toast.showToast(context: context, message: state.message);
        // }
        // if (state.isSucribed) {
        //   Toast.showToast(context: context, message: state.message);
        // }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return LoadingWIdget();
        }

        if (state.isConnected) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Unloack the kit",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontSize: 18),
                ),
                
                Switch(
                  activeColor: context.theme.primary,
                  value: state.isUnloacked,
                  onChanged: (value) {
                    state.isSucribed == true
                        ? context.read<CheckupBloc>().add(
                                CheckupEvent.unlockKit(
                                    topic: "KC_EC94CB6F61DC/device",
                                    payload: {
                                  "id": "KC_EC94CB6F61DC",
                                  "patientID": "P8308",
                                  "doctorID": "D1204",
                                  "appointmentID": "AP123456",
                                  "type": "Doctor",
                                  "command": "unlock",
                                  "number": 0,
                                  "date": DateTime.now().millisecondsSinceEpoch
                                }))
                        : context
                            .read<CheckupBloc>()
                            .add(const CheckupEvent.lockKit( topic: "KC_EC94CB6F61DC/device",));
                  },
                ),
              ],
            ),
          );
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: Text(
                    "Please check device is in online then try again",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(fontSize: 18),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButtonWidget(
                    name: "Connect",
                    onPressed: () {
                      context.read<CheckupBloc>().add(
                          const CheckupEvent.subscribe(
                              topic: "KC_EC94CB6F61DC/app"));
                    },
                    isLoading: state.isLoading),
              )
            ],
          ),
        );
      },
    );

    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     Text(
    //       "Kit Check up status",
    //       style: Theme.of(context).textTheme.headlineMedium,
    //     ),

    //   ],
    // );
  }
}

// import 'package:flutter/material.dart';
// import 'package:dr_kevell/core/them/custom_theme_extension.dart';

// import '../data/repository/MQTTManager.dart';

// class UnloackWidget extends StatefulWidget {
//   const UnloackWidget({super.key});

//   @override
//   State<UnloackWidget> createState() => _UnloackWidgetState();
// }

// class _UnloackWidgetState extends State<UnloackWidget> {
//   late MQTTManager _manager;

//   void _configureAndConnect() {
//     _manager.initializeMQTTClient();
//     _manager.connect();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Switch(
//       activeColor: context.theme.primary,
//       value: false,
//       onChanged: (value) {
//         _configureAndConnect();
//       },
//     );
//   }
// }
