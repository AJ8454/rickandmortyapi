import 'package:injectable/injectable.dart';
import 'package:rickandmortyapi/src/app/features/home/data/datasources/home_localdatasource.dart';
import 'package:rickandmortyapi/src/app/features/home/data/datasources/home_remotedatasource.dart';
import 'package:rickandmortyapi/src/app/features/home/domain/repositories/home_repo.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeLocalDataSource localDataSource;
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });
}
