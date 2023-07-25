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
    as _i24;
import '../../features/checkup/data/repository/unloack_impliment.dart' as _i26;
import '../../features/checkup/domain/repository/subscribe_mqtt_repository.dart'
    as _i23;
import '../../features/checkup/domain/repository/unlock_mqtt_repository.dart'
    as _i25;
import '../../features/checkup/presentation/bloc/checkup_bloc.dart' as _i31;
import '../../features/history/data/repository/get_patient_history_list_impliment.dart'
    as _i8;
import '../../features/history/domain/repositories/get_patient_history_list_repository.dart'
    as _i7;
import '../../features/history/presentation/bloc/history_bloc.dart' as _i17;
import '../../features/home/data/repositories/get_home_status_repository_impl.dart'
    as _i6;
import '../../features/home/data/repositories/get_home_waiting_patient_repository_impl.dart'
    as _i16;
import '../../features/home/domain/repositories/get_home_status_repository.dart'
    as _i5;
import '../../features/home/domain/repositories/get_home_waiting_patient_repository.dart'
    as _i15;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i18;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i20;
import '../../features/login/domain/repositories/login_repository.dart' as _i19;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i32;
import '../../features/prescription/data/repository/create_prescription_list_impliment.dart'
    as _i4;
import '../../features/prescription/data/repository/get_prescription_list_impliment.dart'
    as _i10;
import '../../features/prescription/data/repository/get_prescription_settings_impliment.dart'
    as _i12;
import '../../features/prescription/data/repository/update_prescription_list_impliment.dart'
    as _i28;
import '../../features/prescription/domain/repositories/create_prescription_repository.dart'
    as _i3;
import '../../features/prescription/domain/repositories/get_prescription_list_repository.dart'
    as _i9;
import '../../features/prescription/domain/repositories/get_prescription_settings_repository.dart'
    as _i11;
import '../../features/prescription/domain/repositories/update_prescription_repository.dart'
    as _i27;
import '../../features/prescription/presentation/bloc/precription_bloc.dart'
    as _i33;
import '../../features/profile/data/repositories/profile_get__repository_impl.dart'
    as _i14;
import '../../features/profile/data/repositories/profile_update_repository_impl.dart'
    as _i30;
import '../../features/profile/domain/repositories/get_profile_repository.dart'
    as _i13;
import '../../features/profile/domain/repositories/update_profile_repository.dart'
    as _i29;
import '../../features/profile/presentation/bloc/profile_bloc.dart' as _i34;
import '../../features/signup/data/repositories/signup_repository_impl.dart'
    as _i22;
import '../../features/signup/domain/repositories/signup_repository.dart'
    as _i21;
import '../../features/signup/presentation/bloc/signup_bloc.dart' as _i35;

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
    gh.lazySingleton<_i5.GetHomeStatusRepository>(
        () => _i6.GetProfileRepoImpliment());
    gh.lazySingleton<_i7.GetPatientHistoryListRepository>(
        () => _i8.GetPatientHistoryListRepoImpliment());
    gh.lazySingleton<_i9.GetPrescriptionListRepository>(
        () => _i10.GetPrescriptionListRepoImpliment());
    gh.lazySingleton<_i11.GetPrescriptionSettingsRepository>(
        () => _i12.GetPrescriptionSettingsRepoImpliment());
    gh.lazySingleton<_i13.GetProfileRepository>(
        () => _i14.GetProfileRepoImpliment());
    gh.lazySingleton<_i15.GetWaitingPatientRepository>(
        () => _i16.UpdateProfileRepoImpliment());
    gh.factory<_i17.HistoryBloc>(
        () => _i17.HistoryBloc(gh<_i7.GetPatientHistoryListRepository>()));
    gh.factory<_i18.HomeBloc>(() => _i18.HomeBloc(
          gh<_i5.GetHomeStatusRepository>(),
          gh<_i15.GetWaitingPatientRepository>(),
        ));
    gh.lazySingleton<_i19.LoginRepository>(() => _i20.LoginRepoImpliment());
    gh.lazySingleton<_i21.SignupRepository>(() => _i22.SignupRepoImpliment());
    gh.lazySingleton<_i23.SubscribeRepository>(
        () => _i24.SubscribetRepoImpliment());
    gh.lazySingleton<_i25.UnloackRepository>(() => _i26.UnloackRepoImpliment());
    gh.lazySingleton<_i27.UpdatePrescriptionListRepository>(
        () => _i28.UpdatePrescriptionListRepoImpliment());
    gh.lazySingleton<_i29.UpdateProfileRepository>(
        () => _i30.UpdateProfileRepoImpliment());
    gh.factory<_i31.CheckupBloc>(() => _i31.CheckupBloc(
          gh<_i23.SubscribeRepository>(),
          gh<_i25.UnloackRepository>(),
        ));
    gh.factory<_i32.LoginBloc>(
        () => _i32.LoginBloc(gh<_i19.LoginRepository>()));
    gh.factory<_i33.PrecriptionBloc>(() => _i33.PrecriptionBloc(
          gh<_i9.GetPrescriptionListRepository>(),
          gh<_i11.GetPrescriptionSettingsRepository>(),
          gh<_i3.CreatePrescriptionListRepository>(),
          gh<_i27.UpdatePrescriptionListRepository>(),
        ));
    gh.factory<_i34.ProfileBloc>(() => _i34.ProfileBloc(
          gh<_i13.GetProfileRepository>(),
          gh<_i29.UpdateProfileRepository>(),
        ));
    gh.factory<_i35.SignupBloc>(
        () => _i35.SignupBloc(gh<_i21.SignupRepository>()));
    return this;
  }
}
