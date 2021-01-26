import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:river_movies/src/data/base/model_entity.dart';

part 'company_entity.g.dart';
part 'company_entity.freezed.dart';

@freezed
abstract class CompanyEntity with _$CompanyEntity, ModelEntity {
  factory CompanyEntity({
    int id,
    @JsonKey(name: 'logo_path')
    String logoPath,
    String name,
    @JsonKey(name: 'original_country')
    String originalCountry,
  }) = _CompanyEntity;

  factory CompanyEntity.fromJson(Map<String, dynamic> json) => _$CompanyEntityFromJson(json);
}
