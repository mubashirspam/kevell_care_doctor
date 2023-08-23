import 'package:dartz/dartz.dart';
import 'package:dr_kevell/features/report/data/model/report_general_info_model.dart';

import '../../../../core/failiar/main_failures.dart';

abstract class FetchReportGeneraInfoRepository {
  Future<Either<MainFailure, ReportGeneraInfoModel>> fetchReportGeneralinfo({
    required int id,
  });
}
