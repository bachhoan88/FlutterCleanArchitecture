// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'collection_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CollectionEntity _$CollectionEntityFromJson(Map<String, dynamic> json) {
  return _CollectionEntity.fromJson(json);
}

/// @nodoc
class _$CollectionEntityTearOff {
  const _$CollectionEntityTearOff();

// ignore: unused_element
  _CollectionEntity call(
      {int id,
      String name,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'backdrop_path') String backdropPath}) {
    return _CollectionEntity(
      id: id,
      name: name,
      posterPath: posterPath,
      backdropPath: backdropPath,
    );
  }

// ignore: unused_element
  CollectionEntity fromJson(Map<String, Object> json) {
    return CollectionEntity.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CollectionEntity = _$CollectionEntityTearOff();

/// @nodoc
mixin _$CollectionEntity {
  int get id;
  String get name;
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CollectionEntityCopyWith<CollectionEntity> get copyWith;
}

/// @nodoc
abstract class $CollectionEntityCopyWith<$Res> {
  factory $CollectionEntityCopyWith(
          CollectionEntity value, $Res Function(CollectionEntity) then) =
      _$CollectionEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'backdrop_path') String backdropPath});
}

/// @nodoc
class _$CollectionEntityCopyWithImpl<$Res>
    implements $CollectionEntityCopyWith<$Res> {
  _$CollectionEntityCopyWithImpl(this._value, this._then);

  final CollectionEntity _value;
  // ignore: unused_field
  final $Res Function(CollectionEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object posterPath = freezed,
    Object backdropPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
    ));
  }
}

/// @nodoc
abstract class _$CollectionEntityCopyWith<$Res>
    implements $CollectionEntityCopyWith<$Res> {
  factory _$CollectionEntityCopyWith(
          _CollectionEntity value, $Res Function(_CollectionEntity) then) =
      __$CollectionEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'backdrop_path') String backdropPath});
}

/// @nodoc
class __$CollectionEntityCopyWithImpl<$Res>
    extends _$CollectionEntityCopyWithImpl<$Res>
    implements _$CollectionEntityCopyWith<$Res> {
  __$CollectionEntityCopyWithImpl(
      _CollectionEntity _value, $Res Function(_CollectionEntity) _then)
      : super(_value, (v) => _then(v as _CollectionEntity));

  @override
  _CollectionEntity get _value => super._value as _CollectionEntity;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object posterPath = freezed,
    Object backdropPath = freezed,
  }) {
    return _then(_CollectionEntity(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CollectionEntity implements _CollectionEntity {
  _$_CollectionEntity(
      {this.id,
      this.name,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'backdrop_path') this.backdropPath});

  factory _$_CollectionEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_CollectionEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;

  @override
  String toString() {
    return 'CollectionEntity(id: $id, name: $name, posterPath: $posterPath, backdropPath: $backdropPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CollectionEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.posterPath, posterPath) ||
                const DeepCollectionEquality()
                    .equals(other.posterPath, posterPath)) &&
            (identical(other.backdropPath, backdropPath) ||
                const DeepCollectionEquality()
                    .equals(other.backdropPath, backdropPath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(posterPath) ^
      const DeepCollectionEquality().hash(backdropPath);

  @JsonKey(ignore: true)
  @override
  _$CollectionEntityCopyWith<_CollectionEntity> get copyWith =>
      __$CollectionEntityCopyWithImpl<_CollectionEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CollectionEntityToJson(this);
  }
}

abstract class _CollectionEntity implements CollectionEntity {
  factory _CollectionEntity(
          {int id,
          String name,
          @JsonKey(name: 'poster_path') String posterPath,
          @JsonKey(name: 'backdrop_path') String backdropPath}) =
      _$_CollectionEntity;

  factory _CollectionEntity.fromJson(Map<String, dynamic> json) =
      _$_CollectionEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @override
  @JsonKey(ignore: true)
  _$CollectionEntityCopyWith<_CollectionEntity> get copyWith;
}
