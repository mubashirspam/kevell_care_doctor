import 'package:flutter/material.dart';

import 'package:sliver_tools/sliver_tools.dart';


import 'all_checkup_history.dart';

class ReportDataWidget extends StatelessWidget {
  const ReportDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: CustomScrollView(
        slivers: [
          SliverPinnedHeader(child: AllCheckupReportHeader()),
          AllCheckupHistory()
        ],
      ),
    );
  }
}
