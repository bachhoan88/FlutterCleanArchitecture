import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:river_movies/src/data/base/model_entity.dart';

part 'image_entity.g.dart';
part 'image_entity.freezed.dart';

@freezed
abstract class ImageEntity with _$ImageEntity, ModelEntity {
  factory ImageEntity({
    @JsonKey(name: 'file_path')
    String imagePath,
    int height,
    int width,
    @JsonKey(name: 'iso_639_1')
    String countryCode,
    @JsonKey(name: 'vote_average')
    double voteAverage,
    @JsonKey(name: 'vote_count')
    int voteCount,
  }) = _ImageEntity;

  factory ImageEntity.fromJson(Map<String, dynamic> json) => _$ImageEntityFromJson(json);
}
