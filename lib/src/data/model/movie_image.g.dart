// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieImage _$MovieImageFromJson(Map<String, dynamic> json) {
  return $checkedNew('MovieImage', json, () {
    final val = MovieImage(
      backdrops: $checkedConvert(
          json,
          'backdrops',
          (v) => (v as List)
              ?.map((e) =>
                  e == null ? null : Img.fromJson(e as Map<String, dynamic>))
              ?.toList()),
      posters: $checkedConvert(
          json,
          'posters',
          (v) => (v as List)
              ?.map((e) =>
                  e == null ? null : Img.fromJson(e as Map<String, dynamic>))
              ?.toList()),
    );
    return val;
  });
}
