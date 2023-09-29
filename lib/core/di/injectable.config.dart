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

import '../../features/chat/data/repository/fetch_chat_profile_impliment.dart'
    as _i14;
import '../../features/chat/domain/repository/fetch_chat_profile_repository.dart'
    as _i13;
import '../../features/chat/presentation/bloc/chat_bloc.dart' as _i52;
import '../../features/checkup/data/repository/end_appoinment_impliment.dart'
    as _i12;
import '../../features/checkup/data/repository/subscribe_impliment.dart'
    as _i41;
import '../../features/checkup/data/repository/unloack_impliment.dart' as _i43;
import '../../features/checkup/domain/repository/end_appoinment_repository.dart'
    as _i11;
import '../../features/checkup/domain/repository/subscribe_mqtt_repository.dart'
    as _i40;
import '../../features/checkup/domain/repository/unlock_mqtt_repository.dart'
    as _i42;
import '../../features/checkup/presentation/bloc/checkup_bloc.dart' as _i53;
import '../../features/history/data/repository/get_patient_history_list_impliment.dart'
    as _i22;
import '../../features/history/domain/repositories/get_patient_history_list_repository.dart'
    as _i21;
import '../../features/history/presentation/bloc/history_bloc.dart' as _i33;
import '../../features/home/data/repositories/get_home_status_repository_impl.dart'
    as _i20;
import '../../features/home/data/repositories/get_home_waiting_patient_repository_impl.dart'
    as _i32;
import '../../features/home/domain/repositories/get_home_status_repository.dart'
    as _i19;
import '../../features/home/domain/repositories/get_home_waiting_patient_repository.dart'
    as _i31;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i34;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i36;
import '../../features/login/domain/repositories/login_repository.dart' as _i35;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i54;
import '../../features/prescription/data/repository/create_prescription_list_impliment.dart'
    as _i4;
import '../../features/prescription/data/repository/delete_prescription_repository_impl.dart'
    as _i8;
import '../../features/prescription/data/repository/get_prescription_list_impliment.dart'
    as _i24;
import '../../features/prescription/data/repository/get_prescription_settings_impliment.dart'
    as _i26;
import '../../features/prescription/data/repository/update_prescription_list_impliment.dart'
    as _i45;
import '../../features/prescription/domain/repositories/create_prescription_repository.dart'
    as _i3;
import '../../features/prescription/domain/repositories/delete_prescription_repository.dart'
    as _i7;
import '../../features/prescription/domain/repositories/get_prescription_list_repository.dart'
    as _i23;
import '../../features/prescription/domain/repositories/get_prescription_settings_repository.dart'
    as _i25;
import '../../features/prescription/domain/repositories/update_prescription_repository.dart'
    as _i44;
import '../../features/prescription/presentation/bloc/precription_bloc.dart'
    as _i55;
import '../../features/profile/data/repositories/profile_get__repository_impl.dart'
    as _i28;
import '../../features/profile/data/repositories/profile_update_repository_impl.dart'
    as _i47;
import '../../features/profile/data/repositories/upload_image_repository_impl.dart'
    as _i51;
import '../../features/profile/domain/repositories/get_profile_repository.dart'
    as _i27;
import '../../features/profile/domain/repositories/update_profile_repository.dart'
    as _i46;
import '../../features/profile/domain/repositories/upload_image_repository.dart'
    as _i50;
import '../../features/profile/presentation/bloc/profile_bloc.dart' as _i56;
import '../../features/report/data/repository/fetch_report_general_impliment.dart'
    as _i16;
import '../../features/report/data/repository/fetch_report_impliment.dart'
    as _i18;
import '../../features/report/domain/repositories/fetch_report_general_repository.dart'
    as _i15;
import '../../features/report/domain/repositories/fetch_report_repository.dart'
    as _i17;
import '../../features/report/presetantion/bloc/report_bloc.dart' as _i37;
import '../../features/schedule/data/repositories/create_schedule_repository_impl.dart'
    as _i6;
import '../../features/schedule/data/repositories/delete_schedule_repository_impl.dart'
    as _i10;
import '../../features/schedule/data/repositories/get_schedule_repository_impl.dart'
    as _i30;
import '../../features/schedule/data/repositories/update_schedule_repository_impl.dart'
    as _i49;
import '../../features/schedule/domain/repositories/create_schedule_repository.dart'
    as _i5;
import '../../features/schedule/domain/repositories/delete_schdule_repository.dart'
    as _i9;
import '../../features/schedule/domain/repositories/get_schedule_repository.dart'
    as _i29;
import '../../features/schedule/domain/repositories/update_schedule_repository.dart'
    as _i48;
import '../../features/schedule/presentation/bloc/schedule_bloc.dart' as _i57;
import '../../features/signup/data/repositories/signup_repository_impl.dart'
    as _i39;
import '../../features/signup/domain/repositories/signup_repository.dart'
    as _i38;
import '../../features/signup/presentation/bloc/signup_bloc.dart' as _i58;

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
    gh.lazySingleton<_i7.DeletePrescriptionRepository>(
        () => _i8.DeletePrescriptionRepoImpliment());
    gh.lazySingleton<_i9.DeleteScheduleRepository>(
        () => _i10.DeleteScheduleRepoImpliment());
    gh.lazySingleton<_i11.EndAppoinmentRepository>(
        () => _i12.EndAppoinmentRepoImpliment());
    gh.lazySingleton<_i13.FetchChatProfileRepository>(
        () => _i14.FetchChatProfileRepoImpliment());
    gh.lazySingleton<_i15.FetchReportGeneraInfoRepository>(
        () => _i16.FetchReportGeneraInfoRepoImpliment());
    gh.lazySingleton<_i17.FetchReportRepository>(
        () => _i18.FetchReportRepoImpliment());
    gh.lazySingleton<_i19.GetHomeStatusRepository>(
        () => _i20.GetProfileRepoImpliment());
    gh.lazySingleton<_i21.GetPatientHistoryListRepository>(
        () => _i22.GetPatientHistoryListRepoImpliment());
    gh.lazySingleton<_i23.GetPrescriptionListRepository>(
        () => _i24.GetPrescriptionListRepoImpliment());
    gh.lazySingleton<_i25.GetPrescriptionSettingsRepository>(
        () => _i26.GetPrescriptionSettingsRepoImpliment());
    gh.lazySingleton<_i27.GetProfileRepository>(
        () => _i28.GetProfileRepoImpliment());
    gh.lazySingleton<_i29.GetScheduleRepository>(
        () => _i30.GetScheduleRepoImpliment());
    gh.lazySingleton<_i31.GetWaitingPatientRepository>(
        () => _i32.UpdateProfileRepoImpliment());
    gh.factory<_i33.HistoryBloc>(
        () => _i33.HistoryBloc(gh<_i21.GetPatientHistoryListRepository>()));
    gh.factory<_i34.HomeBloc>(() => _i34.HomeBloc(
          gh<_i19.GetHomeStatusRepository>(),
          gh<_i31.GetWaitingPatientRepository>(),
        ));
    gh.lazySingleton<_i35.LoginRepository>(() => _i36.LoginRepoImpliment());
    gh.factory<_i37.ReportBloc>(() => _i37.ReportBloc(
          gh<_i15.FetchReportGeneraInfoRepository>(),
          gh<_i17.FetchReportRepository>(),
        ));
    gh.lazySingleton<_i38.SignupRepository>(() => _i39.SignupRepoImpliment());
    gh.lazySingleton<_i40.SubscribeRepository>(
        () => _i41.SubscribetRepoImpliment());
    gh.lazySingleton<_i42.UnloackRepository>(() => _i43.UnloackRepoImpliment());
    gh.lazySingleton<_i44.UpdatePrescriptionListRepository>(
        () => _i45.UpdatePrescriptionListRepoImpliment());
    gh.lazySingleton<_i46.UpdateProfileRepository>(
        () => _i47.UpdateProfileRepoImpliment());
    gh.lazySingleton<_i48.UpdateScheduleRepository>(
        () => _i49.UpdateScheduleRepoImpliment());
    gh.lazySingleton<_i50.UploadImageRepository>(
        () => _i51.UploadImageRepoImpliment());
    gh.factory<_i52.ChatBloc>(
        () => _i52.ChatBloc(gh<_i13.FetchChatProfileRepository>()));
    gh.factory<_i53.CheckupBloc>(() => _i53.CheckupBloc(
          gh<_i40.SubscribeRepository>(),
          gh<_i42.UnloackRepository>(),
          gh<_i11.EndAppoinmentRepository>(),
        ));
    gh.factory<_i54.LoginBloc>(
        () => _i54.LoginBloc(gh<_i35.LoginRepository>()));
    gh.factory<_i55.PrecriptionBloc>(() => _i55.PrecriptionBloc(
          gh<_i23.GetPrescriptionListRepository>(),
          gh<_i25.GetPrescriptionSettingsRepository>(),
          gh<_i3.CreatePrescriptionListRepository>(),
          gh<_i44.UpdatePrescriptionListRepository>(),
          gh<_i7.DeletePrescriptionRepository>(),
        ));
    gh.factory<_i56.ProfileBloc>(() => _i56.ProfileBloc(
          gh<_i27.GetProfileRepository>(),
          gh<_i46.UpdateProfileRepository>(),
          gh<_i50.UploadImageRepository>(),
        ));
    gh.factory<_i57.ScheduleBloc>(() => _i57.ScheduleBloc(
          gh<_i29.GetScheduleRepository>(),
          gh<_i5.CreateScheduleRepository>(),
          gh<_i9.DeleteScheduleRepository>(),
          gh<_i48.UpdateScheduleRepository>(),
        ));
    gh.factory<_i58.SignupBloc>(
        () => _i58.SignupBloc(gh<_i38.SignupRepository>()));
    return this;
  }
}
