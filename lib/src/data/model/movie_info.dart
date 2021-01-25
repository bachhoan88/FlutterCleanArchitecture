import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'movie_info.freezed.dart';
part 'movie_info.g.dart';

@freezed
abstract class MovieInfo with _$MovieInfo {
  factory MovieInfo({
    bool adult,
    @JsonKey(name: 'backdrop_path') String backdropPath,
    @JsonKey(name: 'belongs_to_collection') Collection collection,
    int budget,
    List<Genre> genres,
    String homepage,
    int id,
    @JsonKey(name: 'imdb_id') String imdbId,
    @JsonKey(name: 'original_language') String originalLanguage,
    @JsonKey(name: 'original_title') String originalTitle,
    String overview,
    double popularity,
    @JsonKey(name: 'poster_path') String posterPath,
    @JsonKey(name: 'release_date') String releaseDate,
    int revenue,
    int runtime,
    String tatus,
    String tagline,
    String title,
    bool video,
    @JsonKey(name: 'vote_average') double voteAverage,
    @JsonKey(name: 'vote_count') int voteCount,
    @JsonKey(name: 'production_companies') List<Company> companies,
    @JsonKey(name: 'production_countries') List<Country> countries,
    @JsonKey(name: 'spoken_languages') List<Language> languages,
  }) = _MovieInfo;

  factory MovieInfo.fromJson(Map<String, dynamic> json) => _$MovieInfoFromJson(json);
}
