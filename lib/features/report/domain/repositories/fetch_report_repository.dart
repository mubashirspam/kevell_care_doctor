import 'package:dartz/dartz.dart';
import 'package:dr_kevell/features/report/data/model/report_model.dart';

import '../../../../core/failiar/main_failures.dart';
import '../entities/fetch_report_payload.dart';

abstract class FetchReportRepository {
  Future<Either<MainFailure, ReportModel>> fetchReport({
    required FetchReportPayload fetchReportPayload,
  });
}

