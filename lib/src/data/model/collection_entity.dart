import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:river_movies/src/data/base/model_entity.dart';

part 'collection_entity.freezed.dart';
part 'collection_entity.g.dart';

@freezed
abstract class CollectionEntity with _$CollectionEntity, ModelEntity {
  factory CollectionEntity({
    int id,
    String name,
    @JsonKey(name: 'poster_path') String posterPath,
    @JsonKey(name: 'backdrop_path') String backdropPath,
  }) = _CollectionEntity;

  factory CollectionEntity.fromJson(Map<String, dynamic> json) => _$CollectionEntityFromJson(json);
}
