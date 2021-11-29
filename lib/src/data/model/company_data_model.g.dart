// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyDataModel _$$_CompanyDataModelFromJson(Map<String, dynamic> json) =>
    _$_CompanyDataModel(
      id: json['id'] as int?,
      logoPath: json['logo_path'] as String?,
      name: json['name'] as String?,
      originalCountry: json['original_country'] as String?,
    );

Map<String, dynamic> _$$_CompanyDataModelToJson(_$_CompanyDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.name,
      'original_country': instance.originalCountry,
    };
