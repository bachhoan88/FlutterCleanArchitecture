// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyEntity _$_$_CompanyEntityFromJson(Map<String, dynamic> json) {
  return _$_CompanyEntity(
    id: json['id'] as int,
    logoPath: json['logo_path'] as String,
    name: json['name'] as String,
    originalCountry: json['original_country'] as String,
  );
}

Map<String, dynamic> _$_$_CompanyEntityToJson(_$_CompanyEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.name,
      'original_country': instance.originalCountry,
    };
