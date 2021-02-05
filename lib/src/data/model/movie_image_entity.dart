import 'package:json_annotation/json_annotation.dart';
import 'package:river_movies/src/data/base/model_entity.dart';

import 'models.dart';

part 'movie_image_entity.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class MovieImageEntity with ModelEntity {
  final List<ImageEntity> backdrops;
  final List<ImageEntity> posters;

  MovieImageEntity({this.backdrops, this.posters});

  factory MovieImageEntity.fromJson(Map<String, dynamic> json) => _$MovieImageEntityFromJson(json);
}