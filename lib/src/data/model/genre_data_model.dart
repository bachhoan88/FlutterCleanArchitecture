import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';
part 'genre_data_model.g.dart';
part 'genre_data_model.freezed.dart';

@freezed
class GenreDataModel with _$GenreDataModel, DataModel {
  const factory GenreDataModel({int? id, String? name}) = _GenreDataModel;

  factory GenreDataModel.fromJson(Map<String, dynamic> json) => _$GenreDataModelFromJson(json);
}