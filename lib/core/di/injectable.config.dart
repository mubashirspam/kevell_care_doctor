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

import '../../features/checkup/data/repository/unlock_kit_repository.dart'
    as _i21;
import '../../features/checkup/domain/repository/i_unlock_kit_repo.dart'
    as _i20;
import '../../features/checkup/presentation/bloc/checkup_bloc.dart' as _i3;
import '../../features/history/data/repository/get_patient_history_list_impliment.dart'
    as _i9;
import '../../features/history/domain/repositories/get_patient_history_list_repository.dart'
    as _i8;
import '../../features/history/presentation/bloc/history_bloc.dart' as _i18;
import '../../features/home/data/repositories/get_home_status_repository_impl.dart'
    as _i7;
import '../../features/home/data/repositories/get_home_waiting_patient_repository_impl.dart'
    as _i17;
import '../../features/home/domain/repositories/get_home_status_repository.dart'
    as _i6;
import '../../features/home/domain/repositories/get_home_waiting_patient_repository.dart'
    as _i16;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i19;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i23;
import '../../features/login/domain/repositories/login_repository.dart' as _i22;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i30;
import '../../features/prescription/data/repository/create_prescription_list_impliment.dart'
    as _i5;
import '../../features/prescription/data/repository/get_prescription_list_impliment.dart'
    as _i11;
import '../../features/prescription/data/repository/get_prescription_settings_impliment.dart'
    as _i13;
import '../../features/prescription/data/repository/update_prescription_list_impliment.dart'
    as _i27;
import '../../features/prescription/domain/repositories/create_prescription_repository.dart'
    as _i4;
import '../../features/prescription/domain/repositories/get_prescription_list_repository.dart'
    as _i10;
import '../../features/prescription/domain/repositories/get_prescription_settings_repository.dart'
    as _i12;
import '../../features/prescription/domain/repositories/update_prescription_repository.dart'
    as _i26;
import '../../features/prescription/presentation/bloc/precription_bloc.dart'
    as _i31;
import '../../features/profile/data/repositories/profile_get__repository_impl.dart'
    as _i15;
import '../../features/profile/data/repositories/profile_update_repository_impl.dart'
    as _i29;
import '../../features/profile/domain/repositories/get_profile_repository.dart'
    as _i14;
import '../../features/profile/domain/repositories/update_profile_repository.dart'
    as _i28;
import '../../features/profile/presentation/bloc/profile_bloc.dart' as _i32;
import '../../features/signup/data/repositories/signup_repository_impl.dart'
    as _i25;
import '../../features/signup/domain/repositories/signup_repository.dart'
    as _i24;
import '../../features/signup/presentation/bloc/signup_bloc.dart' as _i33;

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
    gh.factory<_i3.CheckupBloc>(() => _i3.CheckupBloc());
    gh.lazySingleton<_i4.CreatePrescriptionListRepository>(
        () => _i5.CreatePrescriptionListRepoImpliment());
    gh.lazySingleton<_i6.GetHomeStatusRepository>(
        () => _i7.GetProfileRepoImpliment());
    gh.lazySingleton<_i8.GetPatientHistoryListRepository>(
        () => _i9.GetPatientHistoryListRepoImpliment());
    gh.lazySingleton<_i10.GetPrescriptionListRepository>(
        () => _i11.GetPrescriptionListRepoImpliment());
    gh.lazySingleton<_i12.GetPrescriptionSettingsRepository>(
        () => _i13.GetPrescriptionSettingsRepoImpliment());
    gh.lazySingleton<_i14.GetProfileRepository>(
        () => _i15.GetProfileRepoImpliment());
    gh.lazySingleton<_i16.GetWaitingPatientRepository>(
        () => _i17.UpdateProfileRepoImpliment());
    gh.factory<_i18.HistoryBloc>(
        () => _i18.HistoryBloc(gh<_i8.GetPatientHistoryListRepository>()));
    gh.factory<_i19.HomeBloc>(() => _i19.HomeBloc(
          gh<_i6.GetHomeStatusRepository>(),
          gh<_i16.GetWaitingPatientRepository>(),
        ));
    gh.lazySingleton<_i20.IUnloackKit>(() => _i21.CashBooksRepository());
    gh.lazySingleton<_i22.LoginRepository>(() => _i23.LoginRepoImpliment());
    gh.lazySingleton<_i24.SignupRepository>(() => _i25.SignupRepoImpliment());
    gh.lazySingleton<_i26.UpdatePrescriptionListRepository>(
        () => _i27.UpdatePrescriptionListRepoImpliment());
    gh.lazySingleton<_i28.UpdateProfileRepository>(
        () => _i29.UpdateProfileRepoImpliment());
    gh.factory<_i30.LoginBloc>(
        () => _i30.LoginBloc(gh<_i22.LoginRepository>()));
    gh.factory<_i31.PrecriptionBloc>(() => _i31.PrecriptionBloc(
          gh<_i10.GetPrescriptionListRepository>(),
          gh<_i12.GetPrescriptionSettingsRepository>(),
          gh<_i4.CreatePrescriptionListRepository>(),
          gh<_i26.UpdatePrescriptionListRepository>(),
        ));
    gh.factory<_i32.ProfileBloc>(() => _i32.ProfileBloc(
          gh<_i14.GetProfileRepository>(),
          gh<_i28.UpdateProfileRepository>(),
        ));
    gh.factory<_i33.SignupBloc>(
        () => _i33.SignupBloc(gh<_i24.SignupRepository>()));
    return this;
  }
}
