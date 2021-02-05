// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageEntity _$_$_LanguageEntityFromJson(Map<String, dynamic> json) {
  return _$_LanguageEntity(
    name: json['name'] as String,
    engName: json['english_name'] as String,
    countryCode: json['iso_639_1'] as String,
  );
}

Map<String, dynamic> _$_$_LanguageEntityToJson(_$_LanguageEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'english_name': instance.engName,
      'iso_639_1': instance.countryCode,
    };
