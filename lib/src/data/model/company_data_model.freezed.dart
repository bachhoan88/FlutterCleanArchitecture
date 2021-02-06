// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'company_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CompanyDataModel _$CompanyDataModelFromJson(Map<String, dynamic> json) {
  return _CompanyDataModel.fromJson(json);
}

/// @nodoc
class _$CompanyDataModelTearOff {
  const _$CompanyDataModelTearOff();

// ignore: unused_element
  _CompanyDataModel call(
      {int id,
      @JsonKey(name: 'logo_path') String logoPath,
      String name,
      @JsonKey(name: 'original_country') String originalCountry}) {
    return _CompanyDataModel(
      id: id,
      logoPath: logoPath,
      name: name,
      originalCountry: originalCountry,
    );
  }

// ignore: unused_element
  CompanyDataModel fromJson(Map<String, Object> json) {
    return CompanyDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CompanyDataModel = _$CompanyDataModelTearOff();

/// @nodoc
mixin _$CompanyDataModel {
  int get id;
  @JsonKey(name: 'logo_path')
  String get logoPath;
  String get name;
  @JsonKey(name: 'original_country')
  String get originalCountry;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CompanyDataModelCopyWith<CompanyDataModel> get copyWith;
}

/// @nodoc
abstract class $CompanyDataModelCopyWith<$Res> {
  factory $CompanyDataModelCopyWith(
          CompanyDataModel value, $Res Function(CompanyDataModel) then) =
      _$CompanyDataModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'logo_path') String logoPath,
      String name,
      @JsonKey(name: 'original_country') String originalCountry});
}

/// @nodoc
class _$CompanyDataModelCopyWithImpl<$Res>
    implements $CompanyDataModelCopyWith<$Res> {
  _$CompanyDataModelCopyWithImpl(this._value, this._then);

  final CompanyDataModel _value;
  // ignore: unused_field
  final $Res Function(CompanyDataModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object logoPath = freezed,
    Object name = freezed,
    Object originalCountry = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      logoPath: logoPath == freezed ? _value.logoPath : logoPath as String,
      name: name == freezed ? _value.name : name as String,
      originalCountry: originalCountry == freezed
          ? _value.originalCountry
          : originalCountry as String,
    ));
  }
}

/// @nodoc
abstract class _$CompanyDataModelCopyWith<$Res>
    implements $CompanyDataModelCopyWith<$Res> {
  factory _$CompanyDataModelCopyWith(
          _CompanyDataModel value, $Res Function(_CompanyDataModel) then) =
      __$CompanyDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'logo_path') String logoPath,
      String name,
      @JsonKey(name: 'original_country') String originalCountry});
}

/// @nodoc
class __$CompanyDataModelCopyWithImpl<$Res>
    extends _$CompanyDataModelCopyWithImpl<$Res>
    implements _$CompanyDataModelCopyWith<$Res> {
  __$CompanyDataModelCopyWithImpl(
      _CompanyDataModel _value, $Res Function(_CompanyDataModel) _then)
      : super(_value, (v) => _then(v as _CompanyDataModel));

  @override
  _CompanyDataModel get _value => super._value as _CompanyDataModel;

  @override
  $Res call({
    Object id = freezed,
    Object logoPath = freezed,
    Object name = freezed,
    Object originalCountry = freezed,
  }) {
    return _then(_CompanyDataModel(
      id: id == freezed ? _value.id : id as int,
      logoPath: logoPath == freezed ? _value.logoPath : logoPath as String,
      name: name == freezed ? _value.name : name as String,
      originalCountry: originalCountry == freezed
          ? _value.originalCountry
          : originalCountry as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CompanyDataModel implements _CompanyDataModel {
  _$_CompanyDataModel(
      {this.id,
      @JsonKey(name: 'logo_path') this.logoPath,
      this.name,
      @JsonKey(name: 'original_country') this.originalCountry});

  factory _$_CompanyDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CompanyDataModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'logo_path')
  final String logoPath;
  @override
  final String name;
  @override
  @JsonKey(name: 'original_country')
  final String originalCountry;

  @override
  String toString() {
    return 'CompanyDataModel(id: $id, logoPath: $logoPath, name: $name, originalCountry: $originalCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompanyDataModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.logoPath, logoPath) ||
                const DeepCollectionEquality()
                    .equals(other.logoPath, logoPath)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.originalCountry, originalCountry) ||
                const DeepCollectionEquality()
                    .equals(other.originalCountry, originalCountry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(logoPath) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(originalCountry);

  @JsonKey(ignore: true)
  @override
  _$CompanyDataModelCopyWith<_CompanyDataModel> get copyWith =>
      __$CompanyDataModelCopyWithImpl<_CompanyDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CompanyDataModelToJson(this);
  }
}

abstract class _CompanyDataModel implements CompanyDataModel {
  factory _CompanyDataModel(
          {int id,
          @JsonKey(name: 'logo_path') String logoPath,
          String name,
          @JsonKey(name: 'original_country') String originalCountry}) =
      _$_CompanyDataModel;

  factory _CompanyDataModel.fromJson(Map<String, dynamic> json) =
      _$_CompanyDataModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'logo_path')
  String get logoPath;
  @override
  String get name;
  @override
  @JsonKey(name: 'original_country')
  String get originalCountry;
  @override
  @JsonKey(ignore: true)
  _$CompanyDataModelCopyWith<_CompanyDataModel> get copyWith;
}
