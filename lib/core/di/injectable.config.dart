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

import '../../features/checkup/data/repository/subscribe_impliment.dart'
    as _i29;
import '../../features/checkup/data/repository/unloack_impliment.dart' as _i31;
import '../../features/checkup/domain/repository/subscribe_mqtt_repository.dart'
    as _i28;
import '../../features/checkup/domain/repository/unlock_mqtt_repository.dart'
    as _i30;
import '../../features/checkup/presentation/bloc/checkup_bloc.dart' as _i36;
import '../../features/history/data/repository/get_patient_history_list_impliment.dart'
    as _i10;
import '../../features/history/domain/repositories/get_patient_history_list_repository.dart'
    as _i9;
import '../../features/history/presentation/bloc/history_bloc.dart' as _i21;
import '../../features/home/data/repositories/get_home_status_repository_impl.dart'
    as _i8;
import '../../features/home/data/repositories/get_home_waiting_patient_repository_impl.dart'
    as _i20;
import '../../features/home/domain/repositories/get_home_status_repository.dart'
    as _i7;
import '../../features/home/domain/repositories/get_home_waiting_patient_repository.dart'
    as _i19;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i22;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i24;
import '../../features/login/domain/repositories/login_repository.dart' as _i23;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i37;
import '../../features/prescription/data/repository/create_prescription_list_impliment.dart'
    as _i4;
import '../../features/prescription/data/repository/get_prescription_list_impliment.dart'
    as _i12;
import '../../features/prescription/data/repository/get_prescription_settings_impliment.dart'
    as _i14;
import '../../features/prescription/data/repository/update_prescription_list_impliment.dart'
    as _i33;
import '../../features/prescription/domain/repositories/create_prescription_repository.dart'
    as _i3;
import '../../features/prescription/domain/repositories/get_prescription_list_repository.dart'
    as _i11;
import '../../features/prescription/domain/repositories/get_prescription_settings_repository.dart'
    as _i13;
import '../../features/prescription/domain/repositories/update_prescription_repository.dart'
    as _i32;
import '../../features/prescription/presentation/bloc/precription_bloc.dart'
    as _i38;
import '../../features/profile/data/repositories/profile_get__repository_impl.dart'
    as _i16;
import '../../features/profile/data/repositories/profile_update_repository_impl.dart'
    as _i35;
import '../../features/profile/domain/repositories/get_profile_repository.dart'
    as _i15;
import '../../features/profile/domain/repositories/update_profile_repository.dart'
    as _i34;
import '../../features/profile/presentation/bloc/profile_bloc.dart' as _i39;
import '../../features/schedule/data/repositories/create_schedule_repository_impl.dart'
    as _i6;
import '../../features/schedule/data/repositories/get_schedule_repository_impl.dart'
    as _i18;
import '../../features/schedule/domain/repositories/get_schedule_repository.dart'
    as _i17;
import '../../features/schedule/domain/repositories/update_profile_repository.dart'
    as _i5;
import '../../features/schedule/presentation/bloc/schedule_bloc.dart' as _i25;
import '../../features/signup/data/repositories/signup_repository_impl.dart'
    as _i27;
import '../../features/signup/domain/repositories/signup_repository.dart'
    as _i26;
import '../../features/signup/presentation/bloc/signup_bloc.dart' as _i40;

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
    gh.lazySingleton<_i7.GetHomeStatusRepository>(
        () => _i8.GetProfileRepoImpliment());
    gh.lazySingleton<_i9.GetPatientHistoryListRepository>(
        () => _i10.GetPatientHistoryListRepoImpliment());
    gh.lazySingleton<_i11.GetPrescriptionListRepository>(
        () => _i12.GetPrescriptionListRepoImpliment());
    gh.lazySingleton<_i13.GetPrescriptionSettingsRepository>(
        () => _i14.GetPrescriptionSettingsRepoImpliment());
    gh.lazySingleton<_i15.GetProfileRepository>(
        () => _i16.GetProfileRepoImpliment());
    gh.lazySingleton<_i17.GetScheduleRepository>(
        () => _i18.GetScheduleRepoImpliment());
    gh.lazySingleton<_i19.GetWaitingPatientRepository>(
        () => _i20.UpdateProfileRepoImpliment());
    gh.factory<_i21.HistoryBloc>(
        () => _i21.HistoryBloc(gh<_i9.GetPatientHistoryListRepository>()));
    gh.factory<_i22.HomeBloc>(() => _i22.HomeBloc(
          gh<_i7.GetHomeStatusRepository>(),
          gh<_i19.GetWaitingPatientRepository>(),
        ));
    gh.lazySingleton<_i23.LoginRepository>(() => _i24.LoginRepoImpliment());
    gh.factory<_i25.ScheduleBloc>(() => _i25.ScheduleBloc(
          gh<_i17.GetScheduleRepository>(),
          gh<_i5.CreateScheduleRepository>(),
        ));
    gh.lazySingleton<_i26.SignupRepository>(() => _i27.SignupRepoImpliment());
    gh.lazySingleton<_i28.SubscribeRepository>(
        () => _i29.SubscribetRepoImpliment());
    gh.lazySingleton<_i30.UnloackRepository>(() => _i31.UnloackRepoImpliment());
    gh.lazySingleton<_i32.UpdatePrescriptionListRepository>(
        () => _i33.UpdatePrescriptionListRepoImpliment());
    gh.lazySingleton<_i34.UpdateProfileRepository>(
        () => _i35.UpdateProfileRepoImpliment());
    gh.factory<_i36.CheckupBloc>(() => _i36.CheckupBloc(
          gh<_i28.SubscribeRepository>(),
          gh<_i30.UnloackRepository>(),
        ));
    gh.factory<_i37.LoginBloc>(
        () => _i37.LoginBloc(gh<_i23.LoginRepository>()));
    gh.factory<_i38.PrecriptionBloc>(() => _i38.PrecriptionBloc(
          gh<_i11.GetPrescriptionListRepository>(),
          gh<_i13.GetPrescriptionSettingsRepository>(),
          gh<_i3.CreatePrescriptionListRepository>(),
          gh<_i32.UpdatePrescriptionListRepository>(),
        ));
    gh.factory<_i39.ProfileBloc>(() => _i39.ProfileBloc(
          gh<_i15.GetProfileRepository>(),
          gh<_i34.UpdateProfileRepository>(),
        ));
    gh.factory<_i40.SignupBloc>(
        () => _i40.SignupBloc(gh<_i26.SignupRepository>()));
    return this;
  }
}
