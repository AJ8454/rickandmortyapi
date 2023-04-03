import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:rickandmortyapi/src/app/features/home/data/datasources/home_remotedatasource.dart';
import 'package:rickandmortyapi/src/app/features/home/data/repositories/home_repo_impl.dart';
import 'package:rickandmortyapi/src/app/features/home/domain/repositories/home_repo.dart';
import 'package:rickandmortyapi/src/app/features/home/domain/usecases/home_usecase.dart';
import 'package:rickandmortyapi/src/app/features/home/presentation/bloc/home_bloc.dart';
import 'package:rickandmortyapi/src/core/network/network_info.dart';

import 'app/features/home/data/datasources/home_localdatasource.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => HomeBloc(homeUsecase: sl()));
  // usecase
  sl.registerLazySingleton(() => HomeUsecase(homeRepository: sl()));
  // Reposiroty
  sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(
      localDataSource: sl(), networkInfo: sl(), remoteDataSource: sl()));
  // DataSources
  sl.registerLazySingleton<HomeLocalDataSource>(
      () => HomeLocalDataSourceImpl());
  sl.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(client: sl()));

//---------- for core -----------------------------------------------
  // core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

//---------------------------------------------------------------------------
  // external
  // final sharedPreferences = await SharedPreferences.getInstance();
  // sl.registerLazySingleton(() => sharedPreferences);

  sl.registerLazySingleton(() => http.Client());

  sl.registerLazySingleton(() => InternetConnectionChecker());
//---------------------------------------------------------------------------
}
