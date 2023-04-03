import 'package:hive_flutter/hive_flutter.dart';
import 'package:rickandmortyapi/src/app/features/home/domain/models/rick_morty_model.dart';
import 'package:rickandmortyapi/src/core/utils/app_strings.dart';

abstract class HomeLocalDataSource {
  Box get box;
  Future<void> setcacheRMData(RickMortyModel data);
  Future<RickMortyModel> getCacheRWData();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  Box get box => Hive.box(AppStrings.rAndMDBBox);

  @override
  Future<void> setcacheRMData(RickMortyModel data) async {
    try {
      await box.add(data);
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<RickMortyModel> getCacheRWData() async {
    final rawRes = box.get(AppStrings.rAndMDBBox);
    return rawRes;
  }
}
