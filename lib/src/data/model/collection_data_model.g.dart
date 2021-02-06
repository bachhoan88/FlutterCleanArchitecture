// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CollectionDataModel _$_$_CollectionDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_CollectionDataModel(
    id: json['id'] as int,
    name: json['name'] as String,
    posterPath: json['poster_path'] as String,
    backdropPath: json['backdrop_path'] as String,
  );
}

Map<String, dynamic> _$_$_CollectionDataModelToJson(
        _$_CollectionDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
    };
