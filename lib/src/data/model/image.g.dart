// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Img _$_$_ImgFromJson(Map<String, dynamic> json) {
  return _$_Img(
    aspect: (json['aspect_ratio'] as num)?.toDouble(),
    imagePath: json['file_path'] as String,
    height: json['height'] as int,
    width: json['width'] as int,
    countryCode: json['iso_639_1'] as String,
    voteAverage: json['vote_average'] as int,
    voteCount: json['vote_count'] as int,
  );
}

Map<String, dynamic> _$_$_ImgToJson(_$_Img instance) => <String, dynamic>{
      'aspect_ratio': instance.aspect,
      'file_path': instance.imagePath,
      'height': instance.height,
      'width': instance.width,
      'iso_639_1': instance.countryCode,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
