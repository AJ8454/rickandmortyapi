import 'package:dartz/dartz.dart';
import 'package:rickandmortyapi/src/app/features/home/data/datasources/home_localdatasource.dart';
import 'package:rickandmortyapi/src/app/features/home/data/datasources/home_remotedatasource.dart';
import 'package:rickandmortyapi/src/app/features/home/domain/models/rick_morty_model.dart';
import 'package:rickandmortyapi/src/app/features/home/domain/repositories/home_repo.dart';
import 'package:rickandmortyapi/src/core/errors/failures.dart';
import 'package:rickandmortyapi/src/core/network/network_info.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeLocalDataSource localDataSource;
  final HomeRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  HomeRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, RickMortyModel>> getData(int token) async {
    if (await networkInfo.isConnected) {
      try {
        RickMortyModel results = await remoteDataSource.getData(token);
        await localDataSource.setcacheRMData(results);
        return Right(results);
      } catch (e) {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
