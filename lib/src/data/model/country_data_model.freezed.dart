// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'country_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryDataModel _$CountryDataModelFromJson(Map<String, dynamic> json) {
  return _CountryDataModel.fromJson(json);
}

/// @nodoc
class _$CountryDataModelTearOff {
  const _$CountryDataModelTearOff();

  _CountryDataModel call(
      {String? name, @JsonKey(name: 'iso_3166_1') String? code}) {
    return _CountryDataModel(
      name: name,
      code: code,
    );
  }

  CountryDataModel fromJson(Map<String, Object?> json) {
    return CountryDataModel.fromJson(json);
  }
}

/// @nodoc
const $CountryDataModel = _$CountryDataModelTearOff();

/// @nodoc
mixin _$CountryDataModel {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_3166_1')
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDataModelCopyWith<CountryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDataModelCopyWith<$Res> {
  factory $CountryDataModelCopyWith(
          CountryDataModel value, $Res Function(CountryDataModel) then) =
      _$CountryDataModelCopyWithImpl<$Res>;
  $Res call({String? name, @JsonKey(name: 'iso_3166_1') String? code});
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
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({String? name, @JsonKey(name: 'iso_3166_1') String? code});
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
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_CountryDataModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryDataModel implements _CountryDataModel {
  const _$_CountryDataModel(
      {this.name, @JsonKey(name: 'iso_3166_1') this.code});

  factory _$_CountryDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CountryDataModelFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'iso_3166_1')
  final String? code;

  @override
  String toString() {
    return 'CountryDataModel(name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CountryDataModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$CountryDataModelCopyWith<_CountryDataModel> get copyWith =>
      __$CountryDataModelCopyWithImpl<_CountryDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryDataModelToJson(this);
  }
}

abstract class _CountryDataModel implements CountryDataModel {
  const factory _CountryDataModel(
      {String? name,
      @JsonKey(name: 'iso_3166_1') String? code}) = _$_CountryDataModel;

  factory _CountryDataModel.fromJson(Map<String, dynamic> json) =
      _$_CountryDataModel.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: 'iso_3166_1')
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$CountryDataModelCopyWith<_CountryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
