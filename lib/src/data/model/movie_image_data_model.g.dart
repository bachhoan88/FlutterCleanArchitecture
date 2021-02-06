// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_image_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieImageDataModel _$MovieImageDataModelFromJson(Map<String, dynamic> json) {
  return $checkedNew('MovieImageDataModel', json, () {
    final val = MovieImageDataModel(
      backdrops: $checkedConvert(
          json,
          'backdrops',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : ImageDataModel.fromJson(e as Map<String, dynamic>))
              ?.toList()),
      posters: $checkedConvert(
          json,
          'posters',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : ImageDataModel.fromJson(e as Map<String, dynamic>))
              ?.toList()),
    );
    return val;
  });
}
