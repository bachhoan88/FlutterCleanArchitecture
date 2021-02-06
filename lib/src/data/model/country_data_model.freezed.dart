// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'country_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CountryDataModel _$CountryDataModelFromJson(Map<String, dynamic> json) {
  return _CountryDataModel.fromJson(json);
}

/// @nodoc
class _$CountryDataModelTearOff {
  const _$CountryDataModelTearOff();

// ignore: unused_element
  _CountryDataModel call(
      {String name, @JsonKey(name: 'iso_3166_1') String code}) {
    return _CountryDataModel(
      name: name,
      code: code,
    );
  }

// ignore: unused_element
  CountryDataModel fromJson(Map<String, Object> json) {
    return CountryDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CountryDataModel = _$CountryDataModelTearOff();

/// @nodoc
mixin _$CountryDataModel {
  String get name;
  @JsonKey(name: 'iso_3166_1')
  String get code;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CountryDataModelCopyWith<CountryDataModel> get copyWith;
}

/// @nodoc
abstract class $CountryDataModelCopyWith<$Res> {
  factory $CountryDataModelCopyWith(
          CountryDataModel value, $Res Function(CountryDataModel) then) =
      _$CountryDataModelCopyWithImpl<$Res>;
  $Res call({String name, @JsonKey(name: 'iso_3166_1') String code});
}

/// @nodoc
class _$CountryDataModelCopyWithImpl<$Res>
    implements $CountryDataModelCopyWith<$Res> {
  _$CountryDataModelCopyWithImpl(this._value, this._then);

  final CountryDataModel _value;
  // ignore: unused_field
  final $Res Function(CountryDataModel) _then;

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
abstract class _$CountryDataModelCopyWith<$Res>
    implements $CountryDataModelCopyWith<$Res> {
  factory _$CountryDataModelCopyWith(
          _CountryDataModel value, $Res Function(_CountryDataModel) then) =
      __$CountryDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, @JsonKey(name: 'iso_3166_1') String code});
}

/// @nodoc
class __$CountryDataModelCopyWithImpl<$Res>
    extends _$CountryDataModelCopyWithImpl<$Res>
    implements _$CountryDataModelCopyWith<$Res> {
  __$CountryDataModelCopyWithImpl(
      _CountryDataModel _value, $Res Function(_CountryDataModel) _then)
      : super(_value, (v) => _then(v as _CountryDataModel));

  @override
  _CountryDataModel get _value => super._value as _CountryDataModel;

  @override
  $Res call({
    Object name = freezed,
    Object code = freezed,
  }) {
    return _then(_CountryDataModel(
      name: name == freezed ? _value.name : name as String,
      code: code == freezed ? _value.code : code as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CountryDataModel implements _CountryDataModel {
  _$_CountryDataModel({this.name, @JsonKey(name: 'iso_3166_1') this.code});

  factory _$_CountryDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CountryDataModelFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'iso_3166_1')
  final String code;

  @override
  String toString() {
    return 'CountryDataModel(name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryDataModel &&
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
  _$CountryDataModelCopyWith<_CountryDataModel> get copyWith =>
      __$CountryDataModelCopyWithImpl<_CountryDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountryDataModelToJson(this);
  }
}

abstract class _CountryDataModel implements CountryDataModel {
  factory _CountryDataModel(
      {String name,
      @JsonKey(name: 'iso_3166_1') String code}) = _$_CountryDataModel;

  factory _CountryDataModel.fromJson(Map<String, dynamic> json) =
      _$_CountryDataModel.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'iso_3166_1')
  String get code;
  @override
  @JsonKey(ignore: true)
  _$CountryDataModelCopyWith<_CountryDataModel> get copyWith;
}
