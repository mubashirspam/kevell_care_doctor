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
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;

import '../../features/checkup/data/repository/unlock_kit_repository.dart'
    as _i5;
import '../../features/checkup/domain/repository/i_unlock_kit_repo.dart' as _i4;
import '../../features/checkup/presentation/bloc/checkup_bloc.dart' as _i3;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i15;
import '../../features/login/domain/repositories/login_repository.dart' as _i14;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i18;
import '../../features/profile/data/repositories/profile_get__repository_impl.dart'
    as _i13;
import '../../features/profile/data/repositories/profile_update_repository_impl.dart'
    as _i11;
import '../../features/profile/domain/repositories/get_profile_repository.dart'
    as _i12;
import '../../features/profile/domain/repositories/update_profile_repository.dart'
    as _i10;
import '../../features/profile/presentation/bloc/profile_bloc.dart' as _i16;
import '../../features/signup/data/repositories/signup_repository_impl.dart'
    as _i9;
import '../../features/signup/domain/repositories/signup_repository.dart'
    as _i8;
import '../../features/signup/presentation/bloc/signup_bloc.dart' as _i17;
import '../network/netwrok.dart' as _i6;

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
    gh.lazySingleton<_i4.IUnloackKit>(() => _i5.CashBooksRepository());
    gh.factory<_i6.NetworkInfo>(
        () => _i6.NetworkInfoImpl(gh<_i7.InternetConnectionChecker>()));
    gh.lazySingleton<_i8.SignupRepository>(
        () => _i9.SignupRepoImpliment(networkInfo: gh<_i6.NetworkInfo>()));
    gh.lazySingleton<_i10.UpdateProfileRepository>(() =>
        _i11.UpdateProfileRepoImpliment(networkInfo: gh<_i6.NetworkInfo>()));
    gh.lazySingleton<_i12.GetProfileRepository>(
        () => _i13.GetProfileRepoImpliment(networkInfo: gh<_i6.NetworkInfo>()));
    gh.lazySingleton<_i14.LoginRepository>(
        () => _i15.LoginRepoImpliment(networkInfo: gh<_i6.NetworkInfo>()));
    gh.factory<_i16.ProfileBloc>(
        () => _i16.ProfileBloc(gh<_i12.GetProfileRepository>()));
    gh.factory<_i17.SignupBloc>(
        () => _i17.SignupBloc(gh<_i8.SignupRepository>()));
    gh.factory<_i18.LoginBloc>(
        () => _i18.LoginBloc(gh<_i14.LoginRepository>()));
    return this;
  }
}
