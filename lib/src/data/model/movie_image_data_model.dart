import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';
import 'models.dart';
part 'movie_image_data_model.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class MovieImageDataModel with DataModel implements Equatable {
  final List<ImageDataModel>? backdrops;
  final List<ImageDataModel>? posters;

  MovieImageDataModel({this.backdrops, this.posters});

  factory MovieImageDataModel.fromJson(Map<String, dynamic> json) => _$MovieImageDataModelFromJson(json);

  @override
  List<Object?> get props => [backdrops, posters];

  @override
  bool? get stringify => true;
}
