import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'movie_image.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class MovieImage {
  final List<Img> backdrops;
  final List<Img> posters;

  MovieImage({this.backdrops, this.posters});

  factory MovieImage.fromJson(Map<String, dynamic> json) => _$MovieImageFromJson(json);
}