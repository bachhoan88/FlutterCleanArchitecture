import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:river_movies/src/data/base/model_entity.dart';

part 'language_entity.g.dart';
part 'language_entity.freezed.dart';

@freezed
abstract class LanguageEntity with _$LanguageEntity, ModelEntity {
  factory LanguageEntity({
    String name,
    @JsonKey(name: 'english_name')
    String engName,
    @JsonKey(name: 'iso_639_1')
    String countryCode,
  }) = _LanguageEntity;

  factory LanguageEntity.fromJson(Map<String, dynamic> json) => _$LanguageEntityFromJson(json);
}
