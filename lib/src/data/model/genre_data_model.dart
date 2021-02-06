import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:river_movies/src/data/base/data_model.dart';
part 'genre_data_model.g.dart';
part 'genre_data_model.freezed.dart';

@freezed
abstract class GenreDataModel with _$GenreDataModel, DataModel {
  factory GenreDataModel({int id, String name}) = _GenreDataModel;

  factory GenreDataModel.fromJson(Map<String, dynamic> json) => _$GenreDataModelFromJson(json);
}