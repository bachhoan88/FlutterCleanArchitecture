// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Language _$_$_LanguageFromJson(Map<String, dynamic> json) {
  return _$_Language(
    name: json['name'] as String,
    engName: json['english_name'] as String,
    countryCode: json['iso_639_1'] as String,
  );
}

Map<String, dynamic> _$_$_LanguageToJson(_$_Language instance) =>
    <String, dynamic>{
      'name': instance.name,
      'english_name': instance.engName,
      'iso_639_1': instance.countryCode,
    };
