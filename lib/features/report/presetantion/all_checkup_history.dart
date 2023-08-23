import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/report/data/model/report_model.dart';
import 'package:dr_kevell/features/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../configure/assets_manage/icons.dart';
import '../../../core/helper/date.dart';
import '../../../pages/report/presentation/report_screen.dart';
import '../../widgets/calender/calnder.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/input_field/input_field_widget.dart';
import 'bloc/report_bloc.dart';

class AllCheckupHistory extends StatelessWidget {
  const AllCheckupHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReportBloc, ReportState>(
      builder: (context, state) {
        if (state.isReportDataLoading) {
          return MultiSliver(children: const [
            Center(
              child: LoadingWIdget(),
            ),
          ]);
        }

        if (state.hasReportData) {
          if (state.reportData!.data!.isEmpty) {
            return MultiSliver(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://static.vecteezy.com/system/resources/thumbnails/005/006/031/small/no-result-data-document-or-file-not-found-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-etc-vector.jpg"))),
                  child: const Text(
                    "No Appoiment Found",
                  ),
                )
              ],
            );
          } else {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: state.reportData!.data!.length,
                (context, index) => ReportItem(
                  data: state.reportData!.data![index],
                ),
              ),
            );
          }
        }

        return MultiSliver(children: const [Center(child: AppErrorWidget())]);
      },
    );
  }
}

class AllCheckupReportHeader extends StatelessWidget {
  const AllCheckupReportHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.secondary!,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "All-over Patient Checkup History",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontSize: 14),
                ),
                SvgPicture.asset(AppIcons.scheduleFilter),
              ],
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "From",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Expanded(
                  child: Text(
                    "To",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: TextFieldWidget(
                  fillColor: context.theme.backround,
                  hintText: "01/04/2022",
                  keyboardType: TextInputType.datetime,
                  suffixIcon: GestureDetector(
                    onTap: () => showDialog(
                      context: context,
                      builder: (context) => CustomDatePickerDialog(
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now(),
                        onDateTimeChanged: (onDateTimeChanged) {},
                      ),
                    ),
                    child: Icon(
                      Icons.date_range_rounded,
                      color: context.theme.primary,
                    ),
                  ),
                  validate: (validate) {
                    return;
                  },
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: TextFieldWidget(
                  fillColor: context.theme.backround,
                  hintText: "01/04/2022",
                  keyboardType: TextInputType.datetime,
                  suffixIcon: GestureDetector(
                    onTap: () => showDialog(
                      context: context,
                      builder: (context) => CustomDatePickerDialog(
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now(),
                        onDateTimeChanged: (onDateTimeChanged) {},
                      ),
                    ),
                    child: Icon(
                      Icons.date_range_rounded,
                      color: context.theme.primary,
                    ),
                  ),
                  validate: (validate) {
                    return;
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}

class ReportItem extends StatelessWidget {
  final Datum data;
  const ReportItem({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 1),
      elevation: 3,
      color: context.theme.secondary,
      child: ListTile(
        onTap: () => Navigator.of(context).pushNamed(
          ReportScreen.routeName,
          arguments: data,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: dateFormatToYYYYMMddWithDay(data.appointmentdate!),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: context.theme.textPrimary,
                    ),
              ),
              TextSpan(
                text:
                    "   ${extractTime(data.appointmentstarttime!)} - ${extractTime(data.appointmentendtime!)}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
