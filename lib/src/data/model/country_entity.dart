import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:river_movies/src/data/base/model_entity.dart';

part 'country_entity.g.dart';

part 'country_entity.freezed.dart';

@freezed
abstract class CountryEntity with _$CountryEntity, ModelEntity {
  factory CountryEntity({
    String name,
    @JsonKey(name: 'iso_3166_1')
    String code,
  }) = _CountryEntity;

  factory CountryEntity.fromJson(Map<String, dynamic> json) => _$CountryEntityFromJson(json);
}
