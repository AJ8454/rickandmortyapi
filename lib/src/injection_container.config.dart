// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:rickandmortyapi/src/app/features/home/data/datasources/home_localdatasource.dart'
    as _i3;
import 'package:rickandmortyapi/src/app/features/home/data/datasources/home_remotedatasource.dart'
    as _i4;
import 'package:rickandmortyapi/src/app/features/home/data/repositories/home_repo_impl.dart'
    as _i7;
import 'package:rickandmortyapi/src/app/features/home/domain/repositories/home_repo.dart'
    as _i6;
import 'package:rickandmortyapi/src/app/features/home/domain/usecases/home_usecase.dart'
    as _i8;

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
    gh.lazySingleton<_i3.HomeLocalDataSource>(
        () => _i3.HomeLocalDataSourceImpl());
    gh.lazySingleton<_i4.HomeRemoteDataSource>(
        () => _i4.HomeRemoteDataSourceImpl(gh<_i5.Client>()));
    gh.lazySingleton<_i6.HomeRepository>(() => _i7.HomeRepositoryImpl(
          localDataSource: gh<_i3.HomeLocalDataSource>(),
          remoteDataSource: gh<_i4.HomeRemoteDataSource>(),
        ));
    gh.factory<_i8.HomeUsecase>(
        () => _i8.HomeUsecase(homeRepository: gh<_i6.HomeRepository>()));
    return this;
  }
}
