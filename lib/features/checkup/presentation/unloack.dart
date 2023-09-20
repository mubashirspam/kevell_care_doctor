// import 'package:dr_kevell/features/widgets/buttons/text_button_widget.dart';
// import 'package:dr_kevell/features/widgets/loading_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:dr_kevell/core/them/custom_theme_extension.dart';

// import 'bloc/checkup_bloc.dart';

// class UnloackWidget extends StatelessWidget {
//   const UnloackWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<CheckupBloc, CheckupState>(
//       listener: (context, state) {
//         // if (state.isLoading) {
//         //   showDialog(
//         //     context: context,
//         //     builder: (context) => const AlertDialog(
//         //         title: Text("Unloacking..."),
//         //         content: LinearProgressIndicator()),
//         //   );
//         // }
//         // if (state.isConnected) {
//         //   Navigator.pop(context);
//         //   Toast.showToast(context: context, message: state.message);
//         // }
//         // if (state.error) {
//         //   Navigator.pop(context);
//         //   Toast.showToast(context: context, message: state.message);
//         // }
//         // if (state.isSucribed) {
//         //   Toast.showToast(context: context, message: state.message);
//         // }
//       },
//       builder: (context, state) {
//         if (state.isLoading) {
//           return LoadingWIdget();
//         }

//         if (state.isConnected) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Unloack the kit",
//                   style: Theme.of(context)
//                       .textTheme
//                       .headlineLarge!
//                       .copyWith(fontSize: 18),
//                 ),

//                 Switch(
//                   activeColor: context.theme.primary,
//                   value: state.isUnloacked,
//                   onChanged: (value) {
//                     state.isSucribed == true
//                         ? context.read<CheckupBloc>().add(
//                                 CheckupEvent.unlockKit(
//                                     topic: "KC_EC94CB6F61DC/device",
//                                     payload: {
//                                   "id": "KC_EC94CB6F61DC",
//                                   "patientID": "P8308",
//                                   "doctorID": "D1204",
//                                   "appointmentID": "AP123456",
//                                   "type": "Doctor",
//                                   "command": "unlock",
//                                   "number": 0,
//                                   "date": DateTime.now().millisecondsSinceEpoch
//                                 }))
//                         : context
//                             .read<CheckupBloc>()
//                             .add(const CheckupEvent.lockKit( topic: "KC_EC94CB6F61DC/device",));
//                   },
//                 ),
//               ],
//             ),
//           );
//         }

//         return Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: SizedBox(
//                   child: Text(
//                     "Please check device is in online then try again",
//                     style: Theme.of(context)
//                         .textTheme
//                         .headlineLarge!
//                         .copyWith(fontSize: 18),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 1,
//                 child: TextButtonWidget(
//                     name: "Connect",
//                     onPressed: () {
//                       context.read<CheckupBloc>().add(
//                           const CheckupEvent.subscribe(
//                               topic: "KC_EC94CB6F61DC/app"));
//                     },
//                     isLoading: state.isLoading),
//               )
//             ],
//           ),
//         );
//       },
//     );

//     // Row(
//     //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //   children: [
//     //     Text(
//     //       "Kit Check up status",
//     //       style: Theme.of(context).textTheme.headlineMedium,
//     //     ),

//     //   ],
//     // );
//   }
// }

import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';

class UnloackWidget extends StatelessWidget {
  final bool isConnected;
  final bool isUnloacked;
  final bool isLoading;
  final bool isUnloacking;
  final String id;

  final void Function(bool)? onChanged;
  final VoidCallback onpressed;
  const UnloackWidget(
      {super.key,
      required this.isConnected,
      required this.isUnloacking,
      required this.isUnloacked,
      required this.onChanged,
      required this.isLoading,
      required this.id,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(vertical: 10),
            color: isConnected ? Colors.green : Colors.red,
            padding: const EdgeInsets.all(5).copyWith(left: 20, right: 20),
            child: isLoading
                ? const LinearProgressIndicator(
                    color: Colors.white,
                  )
                : isConnected
                    ?  Text("Yor Mobile is connected to device id :$id ")
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                              "Please make device online connect again "),
                          GestureDetector(
                              onTap: onpressed,
                              child: const Icon(
                                Icons.sync_alt_outlined,
                                color: Colors.white,
                              ))
                        ],
                      )),
        isConnected
            ? Padding(
                padding: isUnloacking
                    ? const EdgeInsets.symmetric(horizontal: 20)
                        .copyWith(bottom: 15, top: 10)
                    : const EdgeInsets.symmetric(horizontal: 20),
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
                    isUnloacking
                        ? SizedBox(
                            height: 20,
                            width: 20,
                            child: Center(
                              child: CircularProgressIndicator(
                                strokeWidth: 5,
                                color: context.theme.primary,
                              ),
                            ),
                          )
                        : Switch(
                            activeColor: context.theme.primary,
                            value: isUnloacked,
                            onChanged: onChanged,
                          ),
                  ],
                ),
              )
            : const SizedBox()
      ],
    );
  }
}
