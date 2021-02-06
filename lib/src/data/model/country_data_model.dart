import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:river_movies/src/data/base/data_model.dart';

part 'country_data_model.g.dart';

part 'country_data_model.freezed.dart';

@freezed
abstract class CountryDataModel with _$CountryDataModel, DataModel {
  factory CountryDataModel({
    String name,
    @JsonKey(name: 'iso_3166_1')
    String code,
  }) = _CountryDataModel;

  factory CountryDataModel.fromJson(Map<String, dynamic> json) => _$CountryDataModelFromJson(json);
}
