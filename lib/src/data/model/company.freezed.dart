// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
class _$CompanyTearOff {
  const _$CompanyTearOff();

// ignore: unused_element
  _Company call(
      {int id,
      @JsonKey(name: 'logo_path') String logoPath,
      String name,
      @JsonKey(name: 'original_country') String originalCountry}) {
    return _Company(
      id: id,
      logoPath: logoPath,
      name: name,
      originalCountry: originalCountry,
    );
  }

// ignore: unused_element
  Company fromJson(Map<String, Object> json) {
    return Company.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Company = _$CompanyTearOff();

/// @nodoc
mixin _$Company {
  int get id;
  @JsonKey(name: 'logo_path')
  String get logoPath;
  String get name;
  @JsonKey(name: 'original_country')
  String get originalCountry;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'logo_path') String logoPath,
      String name,
      @JsonKey(name: 'original_country') String originalCountry});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res> implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  final Company _value;
  // ignore: unused_field
  final $Res Function(Company) _then;

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
abstract class _$CompanyCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$CompanyCopyWith(_Company value, $Res Function(_Company) then) =
      __$CompanyCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'logo_path') String logoPath,
      String name,
      @JsonKey(name: 'original_country') String originalCountry});
}

/// @nodoc
class __$CompanyCopyWithImpl<$Res> extends _$CompanyCopyWithImpl<$Res>
    implements _$CompanyCopyWith<$Res> {
  __$CompanyCopyWithImpl(_Company _value, $Res Function(_Company) _then)
      : super(_value, (v) => _then(v as _Company));

  @override
  _Company get _value => super._value as _Company;

  @override
  $Res call({
    Object id = freezed,
    Object logoPath = freezed,
    Object name = freezed,
    Object originalCountry = freezed,
  }) {
    return _then(_Company(
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
class _$_Company implements _Company {
  _$_Company(
      {this.id,
      @JsonKey(name: 'logo_path') this.logoPath,
      this.name,
      @JsonKey(name: 'original_country') this.originalCountry});

  factory _$_Company.fromJson(Map<String, dynamic> json) =>
      _$_$_CompanyFromJson(json);

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
    return 'Company(id: $id, logoPath: $logoPath, name: $name, originalCountry: $originalCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Company &&
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
  _$CompanyCopyWith<_Company> get copyWith =>
      __$CompanyCopyWithImpl<_Company>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CompanyToJson(this);
  }
}

abstract class _Company implements Company {
  factory _Company(
      {int id,
      @JsonKey(name: 'logo_path') String logoPath,
      String name,
      @JsonKey(name: 'original_country') String originalCountry}) = _$_Company;

  factory _Company.fromJson(Map<String, dynamic> json) = _$_Company.fromJson;

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
  _$CompanyCopyWith<_Company> get copyWith;
}
