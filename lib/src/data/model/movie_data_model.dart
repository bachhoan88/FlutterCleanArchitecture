import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';

part 'movie_data_model.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class MovieDataModel with DataModel implements Equatable {
  final int? id;

  @JsonKey(name: 'vote_count')
  final int? voteCount;
  final bool? video;

  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  final String? title;
  final double? popularity;

  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @JsonKey(name: 'original_language')
  final String? originalLanguage;

  @JsonKey(name: 'original_title')
  final String? originalTitle;

  @JsonKey(name: 'genre_ids')
  final List<int>? genreIds;

  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  final bool? adult;
  final String? overview;

  @JsonKey(name: 'release_date')
  final String? releaseDate;

  MovieDataModel({
    this.id,
    this.voteCount,
    this.video,
    this.voteAverage,
    this.title,
    this.popularity,
    this.posterPath,
    this.originalLanguage,
    this.originalTitle,
    this.genreIds,
    this.backdropPath,
    this.adult,
    this.overview,
    this.releaseDate,
  });

  factory MovieDataModel.fromJson(Map<String, dynamic> json) => _$MovieDataModelFromJson(json);

  @override
  List<Object?> get props => [
        id,
        voteCount,
        video,
        voteAverage,
        title,
        popularity,
        posterPath,
        originalLanguage,
        originalTitle,
        genreIds,
        backdropPath,
        adult,
        overview,
        releaseDate,
      ];

  @override
  bool? get stringify => true;
}
