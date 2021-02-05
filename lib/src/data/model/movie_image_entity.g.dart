// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_image_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieImageEntity _$MovieImageEntityFromJson(Map<String, dynamic> json) {
  return $checkedNew('MovieImageEntity', json, () {
    final val = MovieImageEntity(
      backdrops: $checkedConvert(
          json,
          'backdrops',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : ImageEntity.fromJson(e as Map<String, dynamic>))
              ?.toList()),
      posters: $checkedConvert(
          json,
          'posters',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : ImageEntity.fromJson(e as Map<String, dynamic>))
              ?.toList()),
    );
    return val;
  });
}
