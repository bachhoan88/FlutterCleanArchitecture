// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_info_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieInfoDataModel _$$_MovieInfoDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_MovieInfoDataModel(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      collection: json['belongs_to_collection'] == null
          ? null
          : CollectionDataModel.fromJson(
              json['belongs_to_collection'] as Map<String, dynamic>),
      budget: json['budget'] as int?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String?,
      id: json['id'] as int?,
      imdbId: json['imdb_id'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      revenue: json['revenue'] as int?,
      runtime: json['runtime'] as int?,
      tatus: json['tatus'] as String?,
      tagline: json['tagline'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
      companies: (json['production_companies'] as List<dynamic>?)
          ?.map((e) => CompanyDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['production_countries'] as List<dynamic>?)
          ?.map((e) => CountryDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      languages: (json['spoken_languages'] as List<dynamic>?)
          ?.map((e) => LanguageDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovieInfoDataModelToJson(
        _$_MovieInfoDataModel instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'belongs_to_collection': instance.collection,
      'budget': instance.budget,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdb_id': instance.imdbId,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'tatus': instance.tatus,
      'tagline': instance.tagline,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'production_companies': instance.companies,
      'production_countries': instance.countries,
      'spoken_languages': instance.languages,
    };
