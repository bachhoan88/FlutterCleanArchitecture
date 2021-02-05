// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'genre_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GenreEntity _$GenreEntityFromJson(Map<String, dynamic> json) {
  return _GenreEntity.fromJson(json);
}

/// @nodoc
class _$GenreEntityTearOff {
  const _$GenreEntityTearOff();

// ignore: unused_element
  _GenreEntity call({int id, String name}) {
    return _GenreEntity(
      id: id,
      name: name,
    );
  }

// ignore: unused_element
  GenreEntity fromJson(Map<String, Object> json) {
    return GenreEntity.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GenreEntity = _$GenreEntityTearOff();

/// @nodoc
mixin _$GenreEntity {
  int get id;
  String get name;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GenreEntityCopyWith<GenreEntity> get copyWith;
}

/// @nodoc
abstract class $GenreEntityCopyWith<$Res> {
  factory $GenreEntityCopyWith(
          GenreEntity value, $Res Function(GenreEntity) then) =
      _$GenreEntityCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$GenreEntityCopyWithImpl<$Res> implements $GenreEntityCopyWith<$Res> {
  _$GenreEntityCopyWithImpl(this._value, this._then);

  final GenreEntity _value;
  // ignore: unused_field
  final $Res Function(GenreEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$GenreEntityCopyWith<$Res>
    implements $GenreEntityCopyWith<$Res> {
  factory _$GenreEntityCopyWith(
          _GenreEntity value, $Res Function(_GenreEntity) then) =
      __$GenreEntityCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$GenreEntityCopyWithImpl<$Res> extends _$GenreEntityCopyWithImpl<$Res>
    implements _$GenreEntityCopyWith<$Res> {
  __$GenreEntityCopyWithImpl(
      _GenreEntity _value, $Res Function(_GenreEntity) _then)
      : super(_value, (v) => _then(v as _GenreEntity));

  @override
  _GenreEntity get _value => super._value as _GenreEntity;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_GenreEntity(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GenreEntity implements _GenreEntity {
  _$_GenreEntity({this.id, this.name});

  factory _$_GenreEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_GenreEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'GenreEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenreEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$GenreEntityCopyWith<_GenreEntity> get copyWith =>
      __$GenreEntityCopyWithImpl<_GenreEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GenreEntityToJson(this);
  }
}

abstract class _GenreEntity implements GenreEntity {
  factory _GenreEntity({int id, String name}) = _$_GenreEntity;

  factory _GenreEntity.fromJson(Map<String, dynamic> json) =
      _$_GenreEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$GenreEntityCopyWith<_GenreEntity> get copyWith;
}
