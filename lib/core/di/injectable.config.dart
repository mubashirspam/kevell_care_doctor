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
    as _i5;
import '../../features/checkup/domain/repository/i_unlock_kit_repo.dart' as _i4;
import '../../features/checkup/presentation/bloc/checkup_bloc.dart' as _i3;
import '../../features/login/data/repositories/login_repository_impl.dart'
    as _i7;
import '../../features/login/domain%20copy/repositories/login_repository.dart'
    as _i6;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i11;
import '../../features/signup/data/repositories/signup_repository_impl.dart'
    as _i10;
import '../../features/signup/domain/repositories/signup_repository.dart'
    as _i9;
import '../../features/signup/presentation/bloc/signup_bloc.dart' as _i12;
import '../network/netwrok.dart' as _i8;

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
    gh.lazySingleton<_i6.LoginRepository>(
        () => _i7.LoginRepoImpliment(networkInfo: gh<_i8.NetworkInfo>()));
    gh.lazySingleton<_i9.SignupRepository>(
        () => _i10.SignupRepoImpliment(networkInfo: gh<_i8.NetworkInfo>()));
    gh.factory<_i11.LoginBloc>(() => _i11.LoginBloc(gh<_i6.LoginRepository>()));
    gh.factory<_i12.SignupBloc>(
        () => _i12.SignupBloc(gh<_i9.SignupRepository>()));
    return this;
  }
}
