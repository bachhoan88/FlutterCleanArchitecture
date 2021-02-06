import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:river_movies/src/data/base/data_model.dart';

part 'company_data_model.g.dart';
part 'company_data_model.freezed.dart';

@freezed
abstract class CompanyDataModel with _$CompanyDataModel, DataModel {
  factory CompanyDataModel({
    int id,
    @JsonKey(name: 'logo_path')
    String logoPath,
    String name,
    @JsonKey(name: 'original_country')
    String originalCountry,
  }) = _CompanyDataModel;

  factory CompanyDataModel.fromJson(Map<String, dynamic> json) => _$CompanyDataModelFromJson(json);
}
