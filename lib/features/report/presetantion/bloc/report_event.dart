part of 'report_bloc.dart';

@freezed
class ReportEvent with _$ReportEvent {
  const factory ReportEvent.fetchReportGeneralinfo({
    required int id,
  }) = _FetchReportGeneralinfo;

  const factory ReportEvent.fetchReport({
    required FetchReportPayload fetchReportPayload,
  }) = _FetchReport;
}
