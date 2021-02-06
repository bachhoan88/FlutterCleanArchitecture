import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:river_movies/src/data/base/data_model.dart';

import 'models.dart';

part 'movie_info_data_model.freezed.dart';
part 'movie_info_data_model.g.dart';

@freezed
abstract class MovieInfoDataModel with _$MovieInfoDataModel, DataModel {
  factory MovieInfoDataModel({
    bool adult,
    @JsonKey(name: 'backdrop_path') String backdropPath,
    @JsonKey(name: 'belongs_to_collection') CollectionDataModel collection,
    int budget,
    List<GenreDataModel> genres,
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
    @JsonKey(name: 'production_companies') List<CompanyDataModel> companies,
    @JsonKey(name: 'production_countries') List<CountryDataModel> countries,
    @JsonKey(name: 'spoken_languages') List<LanguageDataModel> languages,
  }) = _MovieInfoDataModel;

  factory MovieInfoDataModel.fromJson(Map<String, dynamic> json) => _$MovieInfoDataModelFromJson(json);
}
