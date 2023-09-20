part of 'report_bloc.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState({
    required bool isGenaralInfoLoading,
    required bool isReportDataLoading,
    required bool hasGenaralInfoData,
    required bool hasReportData,
    required bool unauthorized,
    required DateTime startDate,
    required DateTime endDate,
    required bool isError,
    ReportGeneraInfoModel? reportGeneraInfo,
    ReportModel? reportData,
  }) = _ReportState;

  factory ReportState.initial() => ReportState(
        isGenaralInfoLoading: false,
        unauthorized: false,
        isError: false,
        hasReportData: false,
        isReportDataLoading: false,
        hasGenaralInfoData: false,
        reportData: null,
        reportGeneraInfo: null,
        startDate: DateTime.now(),
        endDate: DateTime.now(),
      );
}
