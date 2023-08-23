import 'package:dr_kevell/features/report/domain/repositories/fetch_report_general_repository.dart';
import 'package:dr_kevell/features/report/domain/repositories/fetch_report_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/model/report_general_info_model.dart';
import '../../data/model/report_model.dart';
import '../../domain/entities/fetch_report_payload.dart';



part 'report_event.dart';
part 'report_state.dart';
part 'report_bloc.freezed.dart';


@injectable
class ReportBloc extends Bloc<ReportEvent, ReportState> {
  final FetchReportGeneraInfoRepository fetchReportGeneraInfoRepository;
  final FetchReportRepository fetchReportRepository;

  ReportBloc(
    this.fetchReportGeneraInfoRepository,
    this.fetchReportRepository,
  ) : super(ReportState.initial()) {
    on<_FetchReportGeneralinfo>((event, emit) async {
      // if (state.hasData) {
      //   return;
      // }
      emit(
        state.copyWith(
          isGenaralInfoLoading: true,
          isError: false,
        ),
      );

      final response = await fetchReportGeneraInfoRepository
          .fetchReportGeneralinfo(id: event.id);

      final result = response.fold(
        (failure) => state.copyWith(
          isGenaralInfoLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isGenaralInfoLoading: false,
          hasGenaralInfoData: true,
          reportGeneraInfo: success,
        ),
      );
      emit(result);
    });

    on<_FetchReport>((event, emit) async {
      // if (state.hasData) {
      //   return;
      // }
      emit(
        state.copyWith(
          isReportDataLoading: true,
          isError: false,
        ),
      );

      final response = await fetchReportRepository.fetchReport(
          fetchReportPayload: event.fetchReportPayload);

      final result = response.fold(
        (failure) => state.copyWith(
          isReportDataLoading: false,
          isError: true,
        ),
        (success) => state.copyWith(
          isError: false,
          isReportDataLoading: false,
          hasReportData: true,
          reportData: success,
        ),
      );
      emit(result);
    });
  }
}
