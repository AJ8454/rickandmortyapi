// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rick_morty_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RickMortyModelAdapter extends TypeAdapter<RickMortyModel> {
  @override
  final int typeId = 0;

  @override
  RickMortyModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RickMortyModel(
      info: fields[0] as Info,
      results: (fields[1] as List).cast<Result>(),
    );
  }

  @override
  void write(BinaryWriter writer, RickMortyModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.info)
      ..writeByte(1)
      ..write(obj.results);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RickMortyModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class InfoAdapter extends TypeAdapter<Info> {
  @override
  final int typeId = 1;

  @override
  Info read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Info(
      count: fields[0] as int,
      pages: fields[1] as int,
      next: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Info obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.count)
      ..writeByte(1)
      ..write(obj.pages)
      ..writeByte(2)
      ..write(obj.next);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ResultAdapter extends TypeAdapter<Result> {
  @override
  final int typeId = 2;

  @override
  Result read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Result(
      id: fields[0] as int,
      name: fields[1] as String,
      status: fields[2] as String,
      species: fields[3] as String,
      type: fields[4] as String,
      gender: fields[5] as String,
      origin: fields[6] as Location,
      location: fields[7] as Location,
      image: fields[8] as String,
      episode: (fields[9] as List).cast<String>(),
      url: fields[10] as String,
      created: fields[11] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Result obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.species)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.gender)
      ..writeByte(6)
      ..write(obj.origin)
      ..writeByte(7)
      ..write(obj.location)
      ..writeByte(8)
      ..write(obj.image)
      ..writeByte(9)
      ..write(obj.episode)
      ..writeByte(10)
      ..write(obj.url)
      ..writeByte(11)
      ..write(obj.created);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResultAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LocationAdapter extends TypeAdapter<Location> {
  @override
  final int typeId = 3;

  @override
  Location read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Location(
      name: fields[0] as String,
      url: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Location obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RickMortyModel _$$_RickMortyModelFromJson(Map<String, dynamic> json) =>
    _$_RickMortyModel(
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_RickMortyModelToJson(_$_RickMortyModel instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };

_$_Info _$$_InfoFromJson(Map<String, dynamic> json) => _$_Info(
      count: json['count'] as int,
      pages: json['pages'] as int,
      next: json['next'] as String,
      prev: json['prev'] ?? "",
    );

Map<String, dynamic> _$$_InfoToJson(_$_Info instance) => <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      type: json['type'] as String,
      gender: json['gender'] as String,
      origin: Location.fromJson(json['origin'] as Map<String, dynamic>),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      image: json['image'] as String,
      episode:
          (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
      url: json['url'] as String,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'origin': instance.origin,
      'location': instance.location,
      'image': instance.image,
      'episode': instance.episode,
      'url': instance.url,
      'created': instance.created.toIso8601String(),
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
