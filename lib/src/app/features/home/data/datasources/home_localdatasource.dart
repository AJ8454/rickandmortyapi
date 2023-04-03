import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:rickandmortyapi/src/core/errors/exceptions.dart';
import 'package:rickandmortyapi/src/core/utils/app_strings.dart';

abstract class HomeLocalDataSource {
  Box get box;
  List<RickMortyModel> getAll<RickMortyModel>();
}

@LazySingleton(as: HomeLocalDataSource)
class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  Box get box => Hive.box(AppStrings.rAndMDBBox);

  @override
  List<RickMortyModel> getAll<RickMortyModel>() {
    try {
      final data = box.toMap().values;
      if (data.isEmpty) {}
      throw EmptyCacheException();

      // return data;
    } on Exception catch (_) {
      rethrow;
    }
  }
}
