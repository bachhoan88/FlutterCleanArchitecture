import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:river_movies/src/data/base/data_model.dart';

part 'image_data_model.g.dart';
part 'image_data_model.freezed.dart';

@freezed
abstract class ImageDataModel with _$ImageDataModel, DataModel {
  factory ImageDataModel({
    @JsonKey(name: 'file_path')
    String imagePath,
    int height,
    int width,
    @JsonKey(name: 'iso_639_1')
    String countryCode,
    @JsonKey(name: 'vote_average')
    double voteAverage,
    @JsonKey(name: 'vote_count')
    int voteCount,
  }) = _ImageDataModel;

  factory ImageDataModel.fromJson(Map<String, dynamic> json) => _$ImageDataModelFromJson(json);
}
