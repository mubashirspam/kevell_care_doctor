// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/checkup/data/repository/end_appoinment_impliment.dart'
    as _i10;
import '../../features/checkup/data/repository/subscribe_impliment.dart'
    as _i37;
import '../../features/checkup/data/repository/unloack_impliment.dart' as _i39;
import '../../features/checkup/domain/repository/end_appoinment_repository.dart'
    as _i9;
import '../../features/checkup/domain/repository/subscribe_mqtt_repository.dart'
    as _i36;
import '../../features/checkup/domain/repository/unlock_mqtt_repository.dart'
    as _i38;
import '../../features/checkup/presentation/bloc/checkup_bloc.dart' as _i46;
import '../../features/history/data/repository/get_patient_history_list_impliment.dart'
    as _i18;
import '../../features/history/domain/repositories/get_patient_history_list_repository.dart'
    as _i17;
import '../../features/history/presentation/bloc/history_bloc.dart' as _i29;
import '../../features/home/data/repositories/get_home_status_repository_impl.dart'
    as _i16;
import '../../features/home/data/repositories/get_home_waiting_patient_repository_impl.dart'
    as _i28;
import '../../features/home/domain/repositories/get_home_status_repository.dart'
    as _i15;
import '../../features/home/domain/repositories/get_home_waiting_patient_repository.dart'
    as _i27;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i30;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i32;
import '../../features/login/domain/repositories/login_repository.dart' as _i31;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i47;
import '../../features/prescription/data/repository/create_prescription_list_impliment.dart'
    as _i4;
import '../../features/prescription/data/repository/get_prescription_list_impliment.dart'
    as _i20;
import '../../features/prescription/data/repository/get_prescription_settings_impliment.dart'
    as _i22;
import '../../features/prescription/data/repository/update_prescription_list_impliment.dart'
    as _i41;
import '../../features/prescription/domain/repositories/create_prescription_repository.dart'
    as _i3;
import '../../features/prescription/domain/repositories/get_prescription_list_repository.dart'
    as _i19;
import '../../features/prescription/domain/repositories/get_prescription_settings_repository.dart'
    as _i21;
import '../../features/prescription/domain/repositories/update_prescription_repository.dart'
    as _i40;
import '../../features/prescription/presentation/bloc/precription_bloc.dart'
    as _i48;
import '../../features/profile/data/repositories/profile_get__repository_impl.dart'
    as _i24;
import '../../features/profile/data/repositories/profile_update_repository_impl.dart'
    as _i43;
import '../../features/profile/domain/repositories/get_profile_repository.dart'
    as _i23;
import '../../features/profile/domain/repositories/update_profile_repository.dart'
    as _i42;
import '../../features/profile/presentation/bloc/profile_bloc.dart' as _i49;
import '../../features/report/data/repository/fetch_report_general_impliment.dart'
    as _i12;
import '../../features/report/data/repository/fetch_report_impliment.dart'
    as _i14;
import '../../features/report/domain/repositories/fetch_report_general_repository.dart'
    as _i11;
import '../../features/report/domain/repositories/fetch_report_repository.dart'
    as _i13;
import '../../features/report/presetantion/bloc/report_bloc.dart' as _i33;
import '../../features/schedule/data/repositories/create_schedule_repository_impl.dart'
    as _i6;
import '../../features/schedule/data/repositories/delete_schedule_repository_impl.dart'
    as _i8;
import '../../features/schedule/data/repositories/get_schedule_repository_impl.dart'
    as _i26;
import '../../features/schedule/data/repositories/update_schedule_repository_impl.dart'
    as _i45;
import '../../features/schedule/domain/repositories/create_schedule_repository.dart'
    as _i5;
import '../../features/schedule/domain/repositories/delete_schdule_repository.dart'
    as _i7;
import '../../features/schedule/domain/repositories/get_schedule_repository.dart'
    as _i25;
import '../../features/schedule/domain/repositories/update_schedule_repository.dart'
    as _i44;
import '../../features/schedule/presentation/bloc/schedule_bloc.dart' as _i50;
import '../../features/signup/data/repositories/signup_repository_impl.dart'
    as _i35;
import '../../features/signup/domain/repositories/signup_repository.dart'
    as _i34;
import '../../features/signup/presentation/bloc/signup_bloc.dart' as _i51;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.CreatePrescriptionListRepository>(
        () => _i4.CreatePrescriptionListRepoImpliment());
    gh.lazySingleton<_i5.CreateScheduleRepository>(
        () => _i6.CreateScheduleRepoImpliment());
    gh.lazySingleton<_i7.DeleteScheduleRepository>(
        () => _i8.DeleteScheduleRepoImpliment());
    gh.lazySingleton<_i9.EndAppoinmentRepository>(
        () => _i10.EndAppoinmentRepoImpliment());
    gh.lazySingleton<_i11.FetchReportGeneraInfoRepository>(
        () => _i12.FetchReportGeneraInfoRepoImpliment());
    gh.lazySingleton<_i13.FetchReportRepository>(
        () => _i14.FetchReportRepoImpliment());
    gh.lazySingleton<_i15.GetHomeStatusRepository>(
        () => _i16.GetProfileRepoImpliment());
    gh.lazySingleton<_i17.GetPatientHistoryListRepository>(
        () => _i18.GetPatientHistoryListRepoImpliment());
    gh.lazySingleton<_i19.GetPrescriptionListRepository>(
        () => _i20.GetPrescriptionListRepoImpliment());
    gh.lazySingleton<_i21.GetPrescriptionSettingsRepository>(
        () => _i22.GetPrescriptionSettingsRepoImpliment());
    gh.lazySingleton<_i23.GetProfileRepository>(
        () => _i24.GetProfileRepoImpliment());
    gh.lazySingleton<_i25.GetScheduleRepository>(
        () => _i26.GetScheduleRepoImpliment());
    gh.lazySingleton<_i27.GetWaitingPatientRepository>(
        () => _i28.UpdateProfileRepoImpliment());
    gh.factory<_i29.HistoryBloc>(
        () => _i29.HistoryBloc(gh<_i17.GetPatientHistoryListRepository>()));
    gh.factory<_i30.HomeBloc>(() => _i30.HomeBloc(
          gh<_i15.GetHomeStatusRepository>(),
          gh<_i27.GetWaitingPatientRepository>(),
        ));
    gh.lazySingleton<_i31.LoginRepository>(() => _i32.LoginRepoImpliment());
    gh.factory<_i33.ReportBloc>(() => _i33.ReportBloc(
          gh<_i11.FetchReportGeneraInfoRepository>(),
          gh<_i13.FetchReportRepository>(),
        ));
    gh.lazySingleton<_i34.SignupRepository>(() => _i35.SignupRepoImpliment());
    gh.lazySingleton<_i36.SubscribeRepository>(
        () => _i37.SubscribetRepoImpliment());
    gh.lazySingleton<_i38.UnloackRepository>(() => _i39.UnloackRepoImpliment());
    gh.lazySingleton<_i40.UpdatePrescriptionListRepository>(
        () => _i41.UpdatePrescriptionListRepoImpliment());
    gh.lazySingleton<_i42.UpdateProfileRepository>(
        () => _i43.UpdateProfileRepoImpliment());
    gh.lazySingleton<_i44.UpdateScheduleRepository>(
        () => _i45.UpdateScheduleRepoImpliment());
    gh.factory<_i46.CheckupBloc>(() => _i46.CheckupBloc(
          gh<_i36.SubscribeRepository>(),
          gh<_i38.UnloackRepository>(),
          gh<_i9.EndAppoinmentRepository>(),
        ));
    gh.factory<_i47.LoginBloc>(
        () => _i47.LoginBloc(gh<_i31.LoginRepository>()));
    gh.factory<_i48.PrecriptionBloc>(() => _i48.PrecriptionBloc(
          gh<_i19.GetPrescriptionListRepository>(),
          gh<_i21.GetPrescriptionSettingsRepository>(),
          gh<_i3.CreatePrescriptionListRepository>(),
          gh<_i40.UpdatePrescriptionListRepository>(),
        ));
    gh.factory<_i49.ProfileBloc>(() => _i49.ProfileBloc(
          gh<_i23.GetProfileRepository>(),
          gh<_i42.UpdateProfileRepository>(),
        ));
    gh.factory<_i50.ScheduleBloc>(() => _i50.ScheduleBloc(
          gh<_i25.GetScheduleRepository>(),
          gh<_i5.CreateScheduleRepository>(),
          gh<_i7.DeleteScheduleRepository>(),
          gh<_i44.UpdateScheduleRepository>(),
        ));
    gh.factory<_i51.SignupBloc>(
        () => _i51.SignupBloc(gh<_i34.SignupRepository>()));
    return this;
  }
}
