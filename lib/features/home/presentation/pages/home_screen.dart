import 'package:dr_kevell/features/home/presentation/waiting_patient.dart';
import 'package:dr_kevell/settings/value/constant.dart';
import 'package:dr_kevell/settings/value/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/settings/assets_manage/images.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../bloc/home_bloc.dart';
import '../home_search.dart';
import '../satus_card_widget.dart';
import '../widgets/token_socket_widget.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const HomeEvent.getHomeWaitingPatient());
      context.read<HomeBloc>().add(const HomeEvent.getHomeStatus());
    });
    return RefreshIndicator(
      color: context.theme.primary,
      onRefresh: () async {
        context.read<HomeBloc>().add(const HomeEvent.getHomeWaitingPatient());
        context.read<HomeBloc>().add(const HomeEvent.getHomeStatus());
      },
      child: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: CustomScrollView(
          slivers: [
            MultiSliver(
              children: [
                ColoredBox(
                  color: context.theme.primary!,
                  child: Row(
                    children: [
                      const SizedBox(width: 20),
                      Expanded(
                          child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello,",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                      color: context.theme.backround,
                                      fontSize: 16),
                            ),
                            FutureBuilder(
                              future: getFromSS(nameKey),
                              builder: (context, snapshot) => Text(
                                "Doctor, \n${snapshot.data ?? "No Name"}",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                      color: context.theme.backround,
                                      fontSize: 30,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      )),
                      Expanded(
                          child: SizedBox(
                        child: Image.asset(
                          AppImg.doctor,
                          height: 200,
                        ),
                      )),
                    ],
                  ),
                ),
                const SliverPinnedHeader(child: HomeSearchWidget()),
                MultiSliver(
                  children: [
                    // BlocBuilder<HomeBloc, HomeState>(
                    //   builder: (context, state) {
                    //     if (state.hasWaitingPatientData) {
                    //       final waitingPatientResult =
                    //           state.waitingPatientResult;

                    //       if (waitingPatientResult != null &&
                    //           waitingPatientResult.data != null &&
                    //           waitingPatientResult.data!.isNotEmpty) {
                    //         final data = waitingPatientResult.data;

                    //         if (data != null &&
                    //             data.isNotEmpty &&
                    //             data[0].bookedappointmentdetails != null &&
                    //             data[0].bookedappointmentdetails!.isNotEmpty) {
                    //           return AppoinemntStatusCard(
                    //             appiontment:
                    //                 data.first.bookedappointmentdetails!,
                    //           );
                    //         }
                    //       }
                    //     }

                    //     return const SizedBox();
                    //   },
                    // ),

                    // const Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: 20),
                    //   child: ScheduleYourTimeLeadingWidget(),
                    // ),
                    const StatusCardWidget(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 20),
                      child: Text(
                        "Upcoming Appointments",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),

                    const WaitingPatientWidget()
                  ],
                ),
              ],
            ),
            // const WaitingPatient()
          ],
        ),
      ),
    );
  }
}
