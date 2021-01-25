// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Language _$LanguageFromJson(Map<String, dynamic> json) {
  return _Language.fromJson(json);
}

/// @nodoc
class _$LanguageTearOff {
  const _$LanguageTearOff();

// ignore: unused_element
  _Language call(
      {String name,
      @JsonKey(name: 'english_name') String engName,
      @JsonKey(name: 'iso_639_1') String countryCode}) {
    return _Language(
      name: name,
      engName: engName,
      countryCode: countryCode,
    );
  }

// ignore: unused_element
  Language fromJson(Map<String, Object> json) {
    return Language.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Language = _$LanguageTearOff();

/// @nodoc
mixin _$Language {
  String get name;
  @JsonKey(name: 'english_name')
  String get engName;
  @JsonKey(name: 'iso_639_1')
  String get countryCode;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LanguageCopyWith<Language> get copyWith;
}

/// @nodoc
abstract class $LanguageCopyWith<$Res> {
  factory $LanguageCopyWith(Language value, $Res Function(Language) then) =
      _$LanguageCopyWithImpl<$Res>;
  $Res call(
      {String name,
      @JsonKey(name: 'english_name') String engName,
      @JsonKey(name: 'iso_639_1') String countryCode});
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res> implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  final Language _value;
  // ignore: unused_field
  final $Res Function(Language) _then;

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
abstract class _$LanguageCopyWith<$Res> implements $LanguageCopyWith<$Res> {
  factory _$LanguageCopyWith(_Language value, $Res Function(_Language) then) =
      __$LanguageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      @JsonKey(name: 'english_name') String engName,
      @JsonKey(name: 'iso_639_1') String countryCode});
}

/// @nodoc
class __$LanguageCopyWithImpl<$Res> extends _$LanguageCopyWithImpl<$Res>
    implements _$LanguageCopyWith<$Res> {
  __$LanguageCopyWithImpl(_Language _value, $Res Function(_Language) _then)
      : super(_value, (v) => _then(v as _Language));

  @override
  _Language get _value => super._value as _Language;

  @override
  $Res call({
    Object name = freezed,
    Object engName = freezed,
    Object countryCode = freezed,
  }) {
    return _then(_Language(
      name: name == freezed ? _value.name : name as String,
      engName: engName == freezed ? _value.engName : engName as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Language implements _Language {
  _$_Language(
      {this.name,
      @JsonKey(name: 'english_name') this.engName,
      @JsonKey(name: 'iso_639_1') this.countryCode});

  factory _$_Language.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageFromJson(json);

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
    return 'Language(name: $name, engName: $engName, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Language &&
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
  _$LanguageCopyWith<_Language> get copyWith =>
      __$LanguageCopyWithImpl<_Language>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageToJson(this);
  }
}

abstract class _Language implements Language {
  factory _Language(
      {String name,
      @JsonKey(name: 'english_name') String engName,
      @JsonKey(name: 'iso_639_1') String countryCode}) = _$_Language;

  factory _Language.fromJson(Map<String, dynamic> json) = _$_Language.fromJson;

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
  _$LanguageCopyWith<_Language> get copyWith;
}
