import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rickandmortyapi/src/app/features/home/domain/models/rick_morty_model.dart';
import 'package:rickandmortyapi/src/core/errors/exceptions.dart';
import 'package:rickandmortyapi/src/core/evn.dart';

abstract class HomeRemoteDataSource {
  Future<RickMortyModel> getData(int token);
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final http.Client client;

  HomeRemoteDataSourceImpl({required this.client});

  @override
  Future<RickMortyModel> getData(int token) async {
    String endPoint = "character?page=$token";

    final response =
        await client.get(Uri.parse("${AppEnvironment.baseApiUrl}$endPoint"));

    if (response.statusCode == 200) {
      RickMortyModel rickMortyModel =
          RickMortyModel.fromJson(jsonDecode(response.body));
      return Future.value(rickMortyModel);
    } else {
      throw ServerException();
    }
  }
}
