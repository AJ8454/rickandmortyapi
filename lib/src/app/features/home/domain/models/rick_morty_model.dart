import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'rick_morty_model.freezed.dart';
part 'rick_morty_model.g.dart';

@freezed
@HiveType(typeId: 0)
class RickMortyModel with _$RickMortyModel {
  const factory RickMortyModel({
    @HiveField(0) required Info info,
    @HiveField(1) @Default([]) List<Result> results,
  }) = _RickMortyModel;

  factory RickMortyModel.fromJson(Map<String, dynamic> json) =>
      _$RickMortyModelFromJson(json);
}

@freezed
@HiveType(typeId: 1)
class Info with _$Info {
  const factory Info({
    @HiveField(0) required int count,
    @HiveField(1) required int pages,
    @HiveField(2) required String next,
    @Default("") prev,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@freezed
@HiveType(typeId: 2)
class Result with _$Result {
  const factory Result({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @HiveField(2) required String status,
    @HiveField(3) required String species,
    @HiveField(4) required String type,
    @HiveField(5) required String gender,
    @HiveField(6) required Location origin,
    @HiveField(7) required Location location,
    @HiveField(8) required String image,
    @HiveField(9) required List<String> episode,
    @HiveField(10) required String url,
    @HiveField(11) required DateTime created,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
@HiveType(typeId: 3)
class Location with _$Location {
  const factory Location({
    @HiveField(0) required String name,
    @HiveField(1) required String url,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
