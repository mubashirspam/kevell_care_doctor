import 'package:dr_kevell/features/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:dr_kevell/core/them/custom_theme_extension.dart';
import 'package:dr_kevell/features/widgets/avatar/active_avatar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/report_bloc.dart';
import 'health_info_widget.dart';

class PatientDetailsWidget extends StatelessWidget {
  const PatientDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BlocBuilder<ReportBloc, ReportState>(
            builder: (context, state) {
              if (state.hasGenaralInfoData) {
                List<String> detailsList = [];
                if (state.reportGeneraInfo!.data!.address != null) {
                  final address = state.reportGeneraInfo!.data!.address;
                  detailsList = [
                    "City:${address!.city}",
                    "District:${address.district}",
                    "State:${address.state}",
                    "Street:${address.street}",
                    "Zipcode:${address.zipCode}",
                  ];
                }
                return Container(
                  margin: const EdgeInsets.all(20).copyWith(bottom: 0),
                  decoration: ShapeDecoration(
                    color: context.theme.secondary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: ActiveAvatar(
                              isActive: false,
                              imageUrl: state.reportGeneraInfo!.data!
                                      .profileImagelink ??
                                  ""),
                        ),
                        const SizedBox(height: 15),
                        Center(
                          child: Text(
                            state.reportGeneraInfo!.data!.name ?? "No Name",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                        Text("Address",
                            style: Theme.of(context).textTheme.headlineMedium),
                        const SizedBox(height: 10), ...List.generate(
                          detailsList.length,
                          (index) {
                            final detail = detailsList[index].split(":");
                            final key = detail[0].trim();
                            final value = detail[1].trim();

                            return Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: richText(context, "$key : ", value),
                            );
                          },
                        ),
                      ]),
                );
              }
              if (state.isGenaralInfoLoading) {
                return const LoadingWIdget();
              }
              return Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.vecteezy.com/system/resources/thumbnails/005/006/031/small/no-result-data-document-or-file-not-found-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-etc-vector.jpg"))),
                child: const Text(
                  "No Appoiment Found",
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          const HealthInfoWidget(),
        ],
      ),
    );
  }

  Widget richText(BuildContext context, String name, content) => Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: name,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: context.theme.textPrimary,
                  ),
            ),
            TextSpan(
              text: content,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      );
}
