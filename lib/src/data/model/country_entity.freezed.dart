// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'country_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CountryEntity _$CountryEntityFromJson(Map<String, dynamic> json) {
  return _CountryEntity.fromJson(json);
}

/// @nodoc
class _$CountryEntityTearOff {
  const _$CountryEntityTearOff();

// ignore: unused_element
  _CountryEntity call({String name, @JsonKey(name: 'iso_3166_1') String code}) {
    return _CountryEntity(
      name: name,
      code: code,
    );
  }

// ignore: unused_element
  CountryEntity fromJson(Map<String, Object> json) {
    return CountryEntity.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CountryEntity = _$CountryEntityTearOff();

/// @nodoc
mixin _$CountryEntity {
  String get name;
  @JsonKey(name: 'iso_3166_1')
  String get code;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CountryEntityCopyWith<CountryEntity> get copyWith;
}

/// @nodoc
abstract class $CountryEntityCopyWith<$Res> {
  factory $CountryEntityCopyWith(
          CountryEntity value, $Res Function(CountryEntity) then) =
      _$CountryEntityCopyWithImpl<$Res>;
  $Res call({String name, @JsonKey(name: 'iso_3166_1') String code});
}

/// @nodoc
class _$CountryEntityCopyWithImpl<$Res>
    implements $CountryEntityCopyWith<$Res> {
  _$CountryEntityCopyWithImpl(this._value, this._then);

  final CountryEntity _value;
  // ignore: unused_field
  final $Res Function(CountryEntity) _then;

  @override
  $Res call({
    Object name = freezed,
    Object code = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      code: code == freezed ? _value.code : code as String,
    ));
  }
}

/// @nodoc
abstract class _$CountryEntityCopyWith<$Res>
    implements $CountryEntityCopyWith<$Res> {
  factory _$CountryEntityCopyWith(
          _CountryEntity value, $Res Function(_CountryEntity) then) =
      __$CountryEntityCopyWithImpl<$Res>;
  @override
  $Res call({String name, @JsonKey(name: 'iso_3166_1') String code});
}

/// @nodoc
class __$CountryEntityCopyWithImpl<$Res>
    extends _$CountryEntityCopyWithImpl<$Res>
    implements _$CountryEntityCopyWith<$Res> {
  __$CountryEntityCopyWithImpl(
      _CountryEntity _value, $Res Function(_CountryEntity) _then)
      : super(_value, (v) => _then(v as _CountryEntity));

  @override
  _CountryEntity get _value => super._value as _CountryEntity;

  @override
  $Res call({
    Object name = freezed,
    Object code = freezed,
  }) {
    return _then(_CountryEntity(
      name: name == freezed ? _value.name : name as String,
      code: code == freezed ? _value.code : code as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CountryEntity implements _CountryEntity {
  _$_CountryEntity({this.name, @JsonKey(name: 'iso_3166_1') this.code});

  factory _$_CountryEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_CountryEntityFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'iso_3166_1')
  final String code;

  @override
  String toString() {
    return 'CountryEntity(name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryEntity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$CountryEntityCopyWith<_CountryEntity> get copyWith =>
      __$CountryEntityCopyWithImpl<_CountryEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountryEntityToJson(this);
  }
}

abstract class _CountryEntity implements CountryEntity {
  factory _CountryEntity(
      {String name,
      @JsonKey(name: 'iso_3166_1') String code}) = _$_CountryEntity;

  factory _CountryEntity.fromJson(Map<String, dynamic> json) =
      _$_CountryEntity.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'iso_3166_1')
  String get code;
  @override
  @JsonKey(ignore: true)
  _$CountryEntityCopyWith<_CountryEntity> get copyWith;
}
