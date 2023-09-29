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
                return Container(
                  margin: const EdgeInsets.all(20).copyWith(bottom: 0),
                  decoration: ShapeDecoration(
                    color: context.theme.secondary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const ActiveAvatar(
                        isActive: false,
                        imageUrl:
                            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
                      ),
                      const SizedBox(height: 10),
                      Text(
                        state.reportGeneraInfo!.data!.username ?? "No Name",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      SizedBox(
                        height: 40,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: List.generate(
                                3,
                                (index) => richText(
                                    context,
                                    "Age-",
                                    state.reportGeneraInfo!.data!.dob ??
                                        "No Age")),
                          ),
                        ),
                      ),
                      richText(context, "Address - ",
                          state.reportGeneraInfo!.data!.address ?? "No Adress"),
                      const SizedBox(height: 20),
                      richText(context, "Case history",
                          "\n \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis pharetra suspendisse nisl, et interdum. Morbi fames et justo, mauris, et, scelerisque in aenean odio. Sed egestas quis pellentesque consectetur leo, proin est, pellentesque lorem. In facilisis suspendisse asellus integer varius lectus iaculis dignissim.  ")
                    ],
                  ),
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
