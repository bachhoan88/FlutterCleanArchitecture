// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'language_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LanguageEntity _$LanguageEntityFromJson(Map<String, dynamic> json) {
  return _LanguageEntity.fromJson(json);
}

/// @nodoc
class _$LanguageEntityTearOff {
  const _$LanguageEntityTearOff();

// ignore: unused_element
  _LanguageEntity call(
      {String name,
      @JsonKey(name: 'english_name') String engName,
      @JsonKey(name: 'iso_639_1') String countryCode}) {
    return _LanguageEntity(
      name: name,
      engName: engName,
      countryCode: countryCode,
    );
  }

// ignore: unused_element
  LanguageEntity fromJson(Map<String, Object> json) {
    return LanguageEntity.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LanguageEntity = _$LanguageEntityTearOff();

/// @nodoc
mixin _$LanguageEntity {
  String get name;
  @JsonKey(name: 'english_name')
  String get engName;
  @JsonKey(name: 'iso_639_1')
  String get countryCode;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LanguageEntityCopyWith<LanguageEntity> get copyWith;
}

/// @nodoc
abstract class $LanguageEntityCopyWith<$Res> {
  factory $LanguageEntityCopyWith(
          LanguageEntity value, $Res Function(LanguageEntity) then) =
      _$LanguageEntityCopyWithImpl<$Res>;
  $Res call(
      {String name,
      @JsonKey(name: 'english_name') String engName,
      @JsonKey(name: 'iso_639_1') String countryCode});
}

/// @nodoc
class _$LanguageEntityCopyWithImpl<$Res>
    implements $LanguageEntityCopyWith<$Res> {
  _$LanguageEntityCopyWithImpl(this._value, this._then);

  final LanguageEntity _value;
  // ignore: unused_field
  final $Res Function(LanguageEntity) _then;

  @override
  $Res call({
    Object name = freezed,
    Object engName = freezed,
    Object countryCode = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      engName: engName == freezed ? _value.engName : engName as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
    ));
  }
}

/// @nodoc
abstract class _$LanguageEntityCopyWith<$Res>
    implements $LanguageEntityCopyWith<$Res> {
  factory _$LanguageEntityCopyWith(
          _LanguageEntity value, $Res Function(_LanguageEntity) then) =
      __$LanguageEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      @JsonKey(name: 'english_name') String engName,
      @JsonKey(name: 'iso_639_1') String countryCode});
}

/// @nodoc
class __$LanguageEntityCopyWithImpl<$Res>
    extends _$LanguageEntityCopyWithImpl<$Res>
    implements _$LanguageEntityCopyWith<$Res> {
  __$LanguageEntityCopyWithImpl(
      _LanguageEntity _value, $Res Function(_LanguageEntity) _then)
      : super(_value, (v) => _then(v as _LanguageEntity));

  @override
  _LanguageEntity get _value => super._value as _LanguageEntity;

  @override
  $Res call({
    Object name = freezed,
    Object engName = freezed,
    Object countryCode = freezed,
  }) {
    return _then(_LanguageEntity(
      name: name == freezed ? _value.name : name as String,
      engName: engName == freezed ? _value.engName : engName as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LanguageEntity implements _LanguageEntity {
  _$_LanguageEntity(
      {this.name,
      @JsonKey(name: 'english_name') this.engName,
      @JsonKey(name: 'iso_639_1') this.countryCode});

  factory _$_LanguageEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageEntityFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'english_name')
  final String engName;
  @override
  @JsonKey(name: 'iso_639_1')
  final String countryCode;

  @override
  String toString() {
    return 'LanguageEntity(name: $name, engName: $engName, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageEntity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.engName, engName) ||
                const DeepCollectionEquality()
                    .equals(other.engName, engName)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(engName) ^
      const DeepCollectionEquality().hash(countryCode);

  @JsonKey(ignore: true)
  @override
  _$LanguageEntityCopyWith<_LanguageEntity> get copyWith =>
      __$LanguageEntityCopyWithImpl<_LanguageEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageEntityToJson(this);
  }
}

abstract class _LanguageEntity implements LanguageEntity {
  factory _LanguageEntity(
      {String name,
      @JsonKey(name: 'english_name') String engName,
      @JsonKey(name: 'iso_639_1') String countryCode}) = _$_LanguageEntity;

  factory _LanguageEntity.fromJson(Map<String, dynamic> json) =
      _$_LanguageEntity.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'english_name')
  String get engName;
  @override
  @JsonKey(name: 'iso_639_1')
  String get countryCode;
  @override
  @JsonKey(ignore: true)
  _$LanguageEntityCopyWith<_LanguageEntity> get copyWith;
}
