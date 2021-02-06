import 'package:json_annotation/json_annotation.dart';

import '../../model/models.dart';

part 'movie_response.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class MovieResponse {
  @JsonKey(name: 'page')
  final int page;

  @JsonKey(name: 'results')
  final List<MovieDataModel> movies;

  @JsonKey(name: 'total_pages')
  final int totalPages;

  @JsonKey(name: 'total_results')
  final int totalResult;

  MovieResponse({this.page, this.movies, this.totalPages, this.totalResult});

  factory MovieResponse.fromJson(Map<String, dynamic> json) => _$MovieResponseFromJson(json);
}
