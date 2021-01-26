import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:river_movies/src/data/base/model_entity.dart';
part 'genre_entity.g.dart';
part 'genre_entity.freezed.dart';

@freezed
abstract class GenreEntity with _$GenreEntity, ModelEntity {
  factory GenreEntity({int id, String name}) = _GenreEntity;

  factory GenreEntity.fromJson(Map<String, dynamic> json) => _$GenreEntityFromJson(json);
}