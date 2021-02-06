// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageDataModel _$_$_LanguageDataModelFromJson(Map<String, dynamic> json) {
  return _$_LanguageDataModel(
    name: json['name'] as String,
    engName: json['english_name'] as String,
    countryCode: json['iso_639_1'] as String,
  );
}

Map<String, dynamic> _$_$_LanguageDataModelToJson(
        _$_LanguageDataModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'english_name': instance.engName,
      'iso_639_1': instance.countryCode,
    };
