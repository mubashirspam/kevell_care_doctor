import 'package:dr_kevell/settings/assets_manage/icons.dart';
import 'package:dr_kevell/settings/color/main_color.dart';
import 'package:dr_kevell/settings/value/constant.dart';
import 'package:dr_kevell/settings/value/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/settings/assets_manage/images.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliver_tools/sliver_tools.dart';
import '../../data/models/waiting_patient_model.dart' as model;

import '../bloc/home_bloc.dart';
import '../home_search.dart';
import '../../../widgets/cards/schedule_your_time_lead_widget.dart';
import '../satus_card_widget.dart';
import '../waiting_patient.dart';
import '../widgets/token_socket_widget.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // context.read<HomeBloc>().add(const HomeEvent.getHomeWaitingPatient());
      // context.read<HomeBloc>().add(const HomeEvent.getHomeStatus());
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
                    AppoinemntStatusCard(
                      appiontment: [model.WaitingPatient()],
                    ),
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
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: context.theme.backround,
                          boxShadow: [
                            BoxShadow(
                                color:
                                    Colors.blueGrey.shade100.withOpacity(0.5),
                                blurRadius: 20)
                          ]),
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        title: Padding(
                          padding: EdgeInsets.all(15),
                          child: SizedBox(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  AppIcons.scheduleA,
                                  color: context.theme.primary,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "12-Dec-2023",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          color: context.theme.textPrimary),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: CircleAvatar(
                                    maxRadius: 3,
                                  ),
                                ),
                                Text(
                                  "11:00 to 13:00",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          color: context.theme.textPrimary),
                                ),
                              ],
                            ),
                          ),
                        ),
                        children: List.generate(5, (index) {
                          final Color color = generateLightColor();
                          return Card(
                            elevation: 0,
                            color: color,
                            margin: EdgeInsets.only(top: 3),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 24,
                                  child: Text(
                                    "$index",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                          color: context.theme.textPrimary,
                                        ),
                                  ),
                                ),
                                title: Text(
                                  "Mr.Mubashir Ahammed",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                subtitle: Text(
                                  "Femail (23)",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                trailing: Icon(
                                  Icons.chevron_right_rounded,
                                  color: context.theme.textPrimary,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
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
