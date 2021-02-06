import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:river_movies/src/data/base/data_model.dart';

part 'language_data_model.g.dart';
part 'language_data_model.freezed.dart';

@freezed
abstract class LanguageDataModel with _$LanguageDataModel, DataModel {
  factory LanguageDataModel({
    String name,
    @JsonKey(name: 'english_name')
    String engName,
    @JsonKey(name: 'iso_639_1')
    String countryCode,
  }) = _LanguageDataModel;

  factory LanguageDataModel.fromJson(Map<String, dynamic> json) => _$LanguageDataModelFromJson(json);
}
