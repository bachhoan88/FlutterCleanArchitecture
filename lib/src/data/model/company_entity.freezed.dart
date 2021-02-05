// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'company_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CompanyEntity _$CompanyEntityFromJson(Map<String, dynamic> json) {
  return _CompanyEntity.fromJson(json);
}

/// @nodoc
class _$CompanyEntityTearOff {
  const _$CompanyEntityTearOff();

// ignore: unused_element
  _CompanyEntity call(
      {int id,
      @JsonKey(name: 'logo_path') String logoPath,
      String name,
      @JsonKey(name: 'original_country') String originalCountry}) {
    return _CompanyEntity(
      id: id,
      logoPath: logoPath,
      name: name,
      originalCountry: originalCountry,
    );
  }

// ignore: unused_element
  CompanyEntity fromJson(Map<String, Object> json) {
    return CompanyEntity.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CompanyEntity = _$CompanyEntityTearOff();

/// @nodoc
mixin _$CompanyEntity {
  int get id;
  @JsonKey(name: 'logo_path')
  String get logoPath;
  String get name;
  @JsonKey(name: 'original_country')
  String get originalCountry;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CompanyEntityCopyWith<CompanyEntity> get copyWith;
}

/// @nodoc
abstract class $CompanyEntityCopyWith<$Res> {
  factory $CompanyEntityCopyWith(
          CompanyEntity value, $Res Function(CompanyEntity) then) =
      _$CompanyEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'logo_path') String logoPath,
      String name,
      @JsonKey(name: 'original_country') String originalCountry});
}

/// @nodoc
class _$CompanyEntityCopyWithImpl<$Res>
    implements $CompanyEntityCopyWith<$Res> {
  _$CompanyEntityCopyWithImpl(this._value, this._then);

  final CompanyEntity _value;
  // ignore: unused_field
  final $Res Function(CompanyEntity) _then;

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
abstract class _$CompanyEntityCopyWith<$Res>
    implements $CompanyEntityCopyWith<$Res> {
  factory _$CompanyEntityCopyWith(
          _CompanyEntity value, $Res Function(_CompanyEntity) then) =
      __$CompanyEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'logo_path') String logoPath,
      String name,
      @JsonKey(name: 'original_country') String originalCountry});
}

/// @nodoc
class __$CompanyEntityCopyWithImpl<$Res>
    extends _$CompanyEntityCopyWithImpl<$Res>
    implements _$CompanyEntityCopyWith<$Res> {
  __$CompanyEntityCopyWithImpl(
      _CompanyEntity _value, $Res Function(_CompanyEntity) _then)
      : super(_value, (v) => _then(v as _CompanyEntity));

  @override
  _CompanyEntity get _value => super._value as _CompanyEntity;

  @override
  $Res call({
    Object id = freezed,
    Object logoPath = freezed,
    Object name = freezed,
    Object originalCountry = freezed,
  }) {
    return _then(_CompanyEntity(
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
class _$_CompanyEntity implements _CompanyEntity {
  _$_CompanyEntity(
      {this.id,
      @JsonKey(name: 'logo_path') this.logoPath,
      this.name,
      @JsonKey(name: 'original_country') this.originalCountry});

  factory _$_CompanyEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_CompanyEntityFromJson(json);

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
    return 'CompanyEntity(id: $id, logoPath: $logoPath, name: $name, originalCountry: $originalCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompanyEntity &&
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
  _$CompanyEntityCopyWith<_CompanyEntity> get copyWith =>
      __$CompanyEntityCopyWithImpl<_CompanyEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CompanyEntityToJson(this);
  }
}

abstract class _CompanyEntity implements CompanyEntity {
  factory _CompanyEntity(
          {int id,
          @JsonKey(name: 'logo_path') String logoPath,
          String name,
          @JsonKey(name: 'original_country') String originalCountry}) =
      _$_CompanyEntity;

  factory _CompanyEntity.fromJson(Map<String, dynamic> json) =
      _$_CompanyEntity.fromJson;

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
  _$CompanyEntityCopyWith<_CompanyEntity> get copyWith;
}
