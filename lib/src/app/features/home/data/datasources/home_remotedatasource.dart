import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:rickandmortyapi/src/app/features/home/domain/models/rick_morty_model.dart';

abstract class HomeRemoteDataSource {
  Future<RickMortyModel> getData(int token);
}

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final http.Client client;

  HomeRemoteDataSourceImpl(this.client);

  @override
  Future<RickMortyModel> getData(int token) {
    // TODO: implement getData
    throw UnimplementedError();
  }
}
