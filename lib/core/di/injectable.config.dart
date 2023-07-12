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
    as _i15;
import '../../features/checkup/domain/repository/i_unlock_kit_repo.dart'
    as _i14;
import '../../features/checkup/presentation/bloc/checkup_bloc.dart' as _i3;
import '../../features/history/data/repository/get_patient_history_list_impliment.dart'
    as _i7;
import '../../features/history/domain/repositories/get_patient_history_list_repository.dart'
    as _i6;
import '../../features/history/presentation/bloc/history_bloc.dart' as _i12;
import '../../features/home/data/repositories/get_home_status_repository_impl.dart'
    as _i5;
import '../../features/home/data/repositories/get_home_waiting_patient_repository_impl.dart'
    as _i11;
import '../../features/home/domain/repositories/get_home_status_repository.dart'
    as _i4;
import '../../features/home/domain/repositories/get_home_waiting_patient_repository.dart'
    as _i10;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i13;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i17;
import '../../features/login/domain/repositories/login_repository.dart' as _i16;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i22;
import '../../features/profile/data/repositories/profile_get__repository_impl.dart'
    as _i9;
import '../../features/profile/data/repositories/profile_update_repository_impl.dart'
    as _i21;
import '../../features/profile/domain/repositories/get_profile_repository.dart'
    as _i8;
import '../../features/profile/domain/repositories/update_profile_repository.dart'
    as _i20;
import '../../features/profile/presentation/bloc/profile_bloc.dart' as _i23;
import '../../features/signup/data/repositories/signup_repository_impl.dart'
    as _i19;
import '../../features/signup/domain/repositories/signup_repository.dart'
    as _i18;
import '../../features/signup/presentation/bloc/signup_bloc.dart' as _i24;

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
    gh.lazySingleton<_i4.GetHomeStatusRepository>(
        () => _i5.GetProfileRepoImpliment());
    gh.lazySingleton<_i6.GetPatientHistoryListRepository>(
        () => _i7.GetPatientHistoryListRepoImpliment());
    gh.lazySingleton<_i8.GetProfileRepository>(
        () => _i9.GetProfileRepoImpliment());
    gh.lazySingleton<_i10.GetWaitingPatientRepository>(
        () => _i11.UpdateProfileRepoImpliment());
    gh.factory<_i12.HistoryBloc>(
        () => _i12.HistoryBloc(gh<_i6.GetPatientHistoryListRepository>()));
    gh.factory<_i13.HomeBloc>(() => _i13.HomeBloc(
          gh<_i4.GetHomeStatusRepository>(),
          gh<_i10.GetWaitingPatientRepository>(),
        ));
    gh.lazySingleton<_i14.IUnloackKit>(() => _i15.CashBooksRepository());
    gh.lazySingleton<_i16.LoginRepository>(() => _i17.LoginRepoImpliment());
    gh.lazySingleton<_i18.SignupRepository>(() => _i19.SignupRepoImpliment());
    gh.lazySingleton<_i20.UpdateProfileRepository>(
        () => _i21.UpdateProfileRepoImpliment());
    gh.factory<_i22.LoginBloc>(
        () => _i22.LoginBloc(gh<_i16.LoginRepository>()));
    gh.factory<_i23.ProfileBloc>(() => _i23.ProfileBloc(
          gh<_i8.GetProfileRepository>(),
          gh<_i20.UpdateProfileRepository>(),
        ));
    gh.factory<_i24.SignupBloc>(
        () => _i24.SignupBloc(gh<_i18.SignupRepository>()));
    return this;
  }
}
