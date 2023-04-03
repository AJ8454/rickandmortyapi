// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rick_morty_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RickMortyModel _$RickMortyModelFromJson(Map<String, dynamic> json) {
  return _RickMortyModel.fromJson(json);
}

/// @nodoc
mixin _$RickMortyModel {
  @HiveField(0)
  Info get info => throw _privateConstructorUsedError;
  @HiveField(1)
  List<Result> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RickMortyModelCopyWith<RickMortyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RickMortyModelCopyWith<$Res> {
  factory $RickMortyModelCopyWith(
          RickMortyModel value, $Res Function(RickMortyModel) then) =
      _$RickMortyModelCopyWithImpl<$Res, RickMortyModel>;
  @useResult
  $Res call({@HiveField(0) Info info, @HiveField(1) List<Result> results});

  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class _$RickMortyModelCopyWithImpl<$Res, $Val extends RickMortyModel>
    implements $RickMortyModelCopyWith<$Res> {
  _$RickMortyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoCopyWith<$Res> get info {
    return $InfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RickMortyModelCopyWith<$Res>
    implements $RickMortyModelCopyWith<$Res> {
  factory _$$_RickMortyModelCopyWith(
          _$_RickMortyModel value, $Res Function(_$_RickMortyModel) then) =
      __$$_RickMortyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) Info info, @HiveField(1) List<Result> results});

  @override
  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$_RickMortyModelCopyWithImpl<$Res>
    extends _$RickMortyModelCopyWithImpl<$Res, _$_RickMortyModel>
    implements _$$_RickMortyModelCopyWith<$Res> {
  __$$_RickMortyModelCopyWithImpl(
      _$_RickMortyModel _value, $Res Function(_$_RickMortyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_$_RickMortyModel(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RickMortyModel implements _RickMortyModel {
  const _$_RickMortyModel(
      {@HiveField(0) required this.info,
      @HiveField(1) final List<Result> results = const []})
      : _results = results;

  factory _$_RickMortyModel.fromJson(Map<String, dynamic> json) =>
      _$$_RickMortyModelFromJson(json);

  @override
  @HiveField(0)
  final Info info;
  final List<Result> _results;
  @override
  @JsonKey()
  @HiveField(1)
  List<Result> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'RickMortyModel(info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RickMortyModel &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RickMortyModelCopyWith<_$_RickMortyModel> get copyWith =>
      __$$_RickMortyModelCopyWithImpl<_$_RickMortyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RickMortyModelToJson(
      this,
    );
  }
}

abstract class _RickMortyModel implements RickMortyModel {
  const factory _RickMortyModel(
      {@HiveField(0) required final Info info,
      @HiveField(1) final List<Result> results}) = _$_RickMortyModel;

  factory _RickMortyModel.fromJson(Map<String, dynamic> json) =
      _$_RickMortyModel.fromJson;

  @override
  @HiveField(0)
  Info get info;
  @override
  @HiveField(1)
  List<Result> get results;
  @override
  @JsonKey(ignore: true)
  _$$_RickMortyModelCopyWith<_$_RickMortyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Info _$InfoFromJson(Map<String, dynamic> json) {
  return _Info.fromJson(json);
}

/// @nodoc
mixin _$Info {
  @HiveField(0)
  int get count => throw _privateConstructorUsedError;
  @HiveField(1)
  int get pages => throw _privateConstructorUsedError;
  @HiveField(2)
  String get next => throw _privateConstructorUsedError;
  dynamic get prev => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoCopyWith<Info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoCopyWith<$Res> {
  factory $InfoCopyWith(Info value, $Res Function(Info) then) =
      _$InfoCopyWithImpl<$Res, Info>;
  @useResult
  $Res call(
      {@HiveField(0) int count,
      @HiveField(1) int pages,
      @HiveField(2) String next,
      dynamic prev});
}

/// @nodoc
class _$InfoCopyWithImpl<$Res, $Val extends Info>
    implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = null,
    Object? prev = freezed,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfoCopyWith<$Res> implements $InfoCopyWith<$Res> {
  factory _$$_InfoCopyWith(_$_Info value, $Res Function(_$_Info) then) =
      __$$_InfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int count,
      @HiveField(1) int pages,
      @HiveField(2) String next,
      dynamic prev});
}

/// @nodoc
class __$$_InfoCopyWithImpl<$Res> extends _$InfoCopyWithImpl<$Res, _$_Info>
    implements _$$_InfoCopyWith<$Res> {
  __$$_InfoCopyWithImpl(_$_Info _value, $Res Function(_$_Info) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = null,
    Object? prev = freezed,
  }) {
    return _then(_$_Info(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      prev: freezed == prev ? _value.prev! : prev,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Info implements _Info {
  const _$_Info(
      {@HiveField(0) required this.count,
      @HiveField(1) required this.pages,
      @HiveField(2) required this.next,
      this.prev = ""});

  factory _$_Info.fromJson(Map<String, dynamic> json) => _$$_InfoFromJson(json);

  @override
  @HiveField(0)
  final int count;
  @override
  @HiveField(1)
  final int pages;
  @override
  @HiveField(2)
  final String next;
  @override
  @JsonKey()
  final dynamic prev;

  @override
  String toString() {
    return 'Info(count: $count, pages: $pages, next: $next, prev: $prev)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Info &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.next, next) || other.next == next) &&
            const DeepCollectionEquality().equals(other.prev, prev));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, pages, next,
      const DeepCollectionEquality().hash(prev));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoCopyWith<_$_Info> get copyWith =>
      __$$_InfoCopyWithImpl<_$_Info>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfoToJson(
      this,
    );
  }
}

abstract class _Info implements Info {
  const factory _Info(
      {@HiveField(0) required final int count,
      @HiveField(1) required final int pages,
      @HiveField(2) required final String next,
      final dynamic prev}) = _$_Info;

  factory _Info.fromJson(Map<String, dynamic> json) = _$_Info.fromJson;

  @override
  @HiveField(0)
  int get count;
  @override
  @HiveField(1)
  int get pages;
  @override
  @HiveField(2)
  String get next;
  @override
  dynamic get prev;
  @override
  @JsonKey(ignore: true)
  _$$_InfoCopyWith<_$_Info> get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get status => throw _privateConstructorUsedError;
  @HiveField(3)
  String get species => throw _privateConstructorUsedError;
  @HiveField(4)
  String get type => throw _privateConstructorUsedError;
  @HiveField(5)
  String get gender => throw _privateConstructorUsedError;
  @HiveField(6)
  Location get origin => throw _privateConstructorUsedError;
  @HiveField(7)
  Location get location => throw _privateConstructorUsedError;
  @HiveField(8)
  String get image => throw _privateConstructorUsedError;
  @HiveField(9)
  List<String> get episode => throw _privateConstructorUsedError;
  @HiveField(10)
  String get url => throw _privateConstructorUsedError;
  @HiveField(11)
  DateTime get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String status,
      @HiveField(3) String species,
      @HiveField(4) String type,
      @HiveField(5) String gender,
      @HiveField(6) Location origin,
      @HiveField(7) Location location,
      @HiveField(8) String image,
      @HiveField(9) List<String> episode,
      @HiveField(10) String url,
      @HiveField(11) DateTime created});

  $LocationCopyWith<$Res> get origin;
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? origin = null,
    Object? location = null,
    Object? image = null,
    Object? episode = null,
    Object? url = null,
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Location,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get origin {
    return $LocationCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String status,
      @HiveField(3) String species,
      @HiveField(4) String type,
      @HiveField(5) String gender,
      @HiveField(6) Location origin,
      @HiveField(7) Location location,
      @HiveField(8) String image,
      @HiveField(9) List<String> episode,
      @HiveField(10) String url,
      @HiveField(11) DateTime created});

  @override
  $LocationCopyWith<$Res> get origin;
  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? origin = null,
    Object? location = null,
    Object? image = null,
    Object? episode = null,
    Object? url = null,
    Object? created = null,
  }) {
    return _then(_$_Result(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Location,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value._episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.status,
      @HiveField(3) required this.species,
      @HiveField(4) required this.type,
      @HiveField(5) required this.gender,
      @HiveField(6) required this.origin,
      @HiveField(7) required this.location,
      @HiveField(8) required this.image,
      @HiveField(9) required final List<String> episode,
      @HiveField(10) required this.url,
      @HiveField(11) required this.created})
      : _episode = episode;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String status;
  @override
  @HiveField(3)
  final String species;
  @override
  @HiveField(4)
  final String type;
  @override
  @HiveField(5)
  final String gender;
  @override
  @HiveField(6)
  final Location origin;
  @override
  @HiveField(7)
  final Location location;
  @override
  @HiveField(8)
  final String image;
  final List<String> _episode;
  @override
  @HiveField(9)
  List<String> get episode {
    if (_episode is EqualUnmodifiableListView) return _episode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episode);
  }

  @override
  @HiveField(10)
  final String url;
  @override
  @HiveField(11)
  final DateTime created;

  @override
  String toString() {
    return 'Result(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, image: $image, episode: $episode, url: $url, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._episode, _episode) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      status,
      species,
      type,
      gender,
      origin,
      location,
      image,
      const DeepCollectionEquality().hash(_episode),
      url,
      created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String name,
      @HiveField(2) required final String status,
      @HiveField(3) required final String species,
      @HiveField(4) required final String type,
      @HiveField(5) required final String gender,
      @HiveField(6) required final Location origin,
      @HiveField(7) required final Location location,
      @HiveField(8) required final String image,
      @HiveField(9) required final List<String> episode,
      @HiveField(10) required final String url,
      @HiveField(11) required final DateTime created}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get status;
  @override
  @HiveField(3)
  String get species;
  @override
  @HiveField(4)
  String get type;
  @override
  @HiveField(5)
  String get gender;
  @override
  @HiveField(6)
  Location get origin;
  @override
  @HiveField(7)
  Location get location;
  @override
  @HiveField(8)
  String get image;
  @override
  @HiveField(9)
  List<String> get episode;
  @override
  @HiveField(10)
  String get url;
  @override
  @HiveField(11)
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({@HiveField(0) String name, @HiveField(1) String url});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String name, @HiveField(1) String url});
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$_Location>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_Location(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  const _$_Location(
      {@HiveField(0) required this.name, @HiveField(1) required this.url});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final String url;

  @override
  String toString() {
    return 'Location(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {@HiveField(0) required final String name,
      @HiveField(1) required final String url}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}
