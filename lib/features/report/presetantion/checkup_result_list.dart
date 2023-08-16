import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/widgets/avatar/active_avatar.dart';
import 'package:dr_kevell/features/widgets/buttons/text_button_widget.dart';
import 'package:flutter/material.dart';


class CheckupReportResultList extends StatelessWidget {
  const CheckupReportResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text(
          "Report",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: context.theme.secondary,
            ),
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              const  ActiveAvatar(
                    imageUrl:
                        "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1180&q=80"),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(fontSize: 16),
                          text: "Name - ",
                          children: [
                            TextSpan(
                              text: "Adrianne Palicki",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text.rich(
                        TextSpan(
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(fontSize: 16),
                          text: "Symptoms - ",
                          children: [
                            TextSpan(
                              text: "Adrianne Palicki",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text.rich(
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(fontSize: 16),
                        TextSpan(
                          text: "Date & Time - ",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(fontSize: 16),
                          children: [
                            TextSpan(
                              text: "Adrianne Palicki",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20).copyWith(top: 0),
            child: Text(
              "Medical Reports",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontSize: 16),
            ),
          ),

          TextButtonWidget(
            name: "Add Prescription",
            onPressed: () {},
            isLoading: false,
          )
          // CheckupResultCard(
          //     name: "Body Temperature",
          //     onPress: () {},
          //     children: [
          //       Text(
          //         "100.9 °F",
          //         style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          //               color: MainConfigColorsDarkThem.danger,
          //             ),
          //       ),
          //     ]),
          // CheckupResultCard(name: "Stethoscope", onPress: () {}, children: [
          //   Text(
          //     "89",
          //     style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          //           color: MainConfigColorsDarkThem.danger,
          //         ),
          //   ),
          // ]),
          // CheckupResultCard(name: "Otoscop", onPress: () {}, children: [
          //   Row(
          //     children: List.generate(
          //       4,
          //       (index) => Container(
          //         margin: const EdgeInsets.only(right: 10),
          //         height: 35,
          //         width: 35,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(12),
          //           image: const DecorationImage(
          //             image: NetworkImage(
          //               "https://www.welchallyn.com/content/dam/welchallyn/images/students/Otoscopy-Pathologies/normal-tympanic-membrane.jpg",
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   )
          // ]),
          // Text("View All")
        ],
      ),
    );
  }
}
