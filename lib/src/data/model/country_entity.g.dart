// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryEntity _$_$_CountryEntityFromJson(Map<String, dynamic> json) {
  return _$_CountryEntity(
    name: json['name'] as String,
    code: json['iso_3166_1'] as String,
  );
}

Map<String, dynamic> _$_$_CountryEntityToJson(_$_CountryEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'iso_3166_1': instance.code,
    };
