import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';

part 'country_data_model.g.dart';

part 'country_data_model.freezed.dart';

@freezed
class CountryDataModel with _$CountryDataModel, DataModel {
  const factory CountryDataModel({
    String? name,
    @JsonKey(name: 'iso_3166_1')
    String? code,
  }) = _CountryDataModel;

  factory CountryDataModel.fromJson(Map<String, dynamic> json) => _$CountryDataModelFromJson(json);
}
