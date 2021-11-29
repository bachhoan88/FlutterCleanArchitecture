// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_image_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieImageDataModel _$MovieImageDataModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MovieImageDataModel',
      json,
      ($checkedConvert) {
        final val = MovieImageDataModel(
          backdrops: $checkedConvert(
              'backdrops',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => ImageDataModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          posters: $checkedConvert(
              'posters',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => ImageDataModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );
