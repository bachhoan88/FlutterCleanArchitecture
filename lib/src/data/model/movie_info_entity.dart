import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:river_movies/src/data/base/model_entity.dart';

import 'models.dart';

part 'movie_info_entity.freezed.dart';
part 'movie_info_entity.g.dart';

@freezed
abstract class MovieInfoEntity with _$MovieInfoEntity, ModelEntity {
  factory MovieInfoEntity({
    bool adult,
    @JsonKey(name: 'backdrop_path') String backdropPath,
    @JsonKey(name: 'belongs_to_collection') CollectionEntity collection,
    int budget,
    List<GenreEntity> genres,
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
    @JsonKey(name: 'production_companies') List<CompanyEntity> companies,
    @JsonKey(name: 'production_countries') List<CountryEntity> countries,
    @JsonKey(name: 'spoken_languages') List<LanguageEntity> languages,
  }) = _MovieInfoEntity;

  factory MovieInfoEntity.fromJson(Map<String, dynamic> json) => _$MovieInfoEntityFromJson(json);
}
