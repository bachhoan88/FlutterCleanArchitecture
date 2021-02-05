// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CollectionEntity _$_$_CollectionEntityFromJson(Map<String, dynamic> json) {
  return _$_CollectionEntity(
    id: json['id'] as int,
    name: json['name'] as String,
    posterPath: json['poster_path'] as String,
    backdropPath: json['backdrop_path'] as String,
  );
}

Map<String, dynamic> _$_$_CollectionEntityToJson(
        _$_CollectionEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
    };
