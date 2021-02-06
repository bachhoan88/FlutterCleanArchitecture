import 'package:json_annotation/json_annotation.dart';
import 'package:river_movies/src/data/base/data_model.dart';

import 'models.dart';

part 'movie_image_data_model.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class MovieImageDataModel with DataModel {
  final List<ImageDataModel> backdrops;
  final List<ImageDataModel> posters;

  MovieImageDataModel({this.backdrops, this.posters});

  factory MovieImageDataModel.fromJson(Map<String, dynamic> json) => _$MovieImageDataModelFromJson(json);
}
