// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDataModel _$MovieDataModelFromJson(Map<String, dynamic> json) {
  return $checkedNew('MovieDataModel', json, () {
    final val = MovieDataModel(
      id: $checkedConvert(json, 'id', (v) => v as int),
      voteCount: $checkedConvert(json, 'vote_count', (v) => v as int),
      video: $checkedConvert(json, 'video', (v) => v as bool),
      voteAverage:
          $checkedConvert(json, 'vote_average', (v) => (v as num)?.toDouble()),
      title: $checkedConvert(json, 'title', (v) => v as String),
      popularity:
          $checkedConvert(json, 'popularity', (v) => (v as num)?.toDouble()),
      posterPath: $checkedConvert(json, 'poster_path', (v) => v as String),
      originalLanguage:
          $checkedConvert(json, 'original_language', (v) => v as String),
      originalTitle:
          $checkedConvert(json, 'original_title', (v) => v as String),
      genreIds: $checkedConvert(json, 'genre_ids',
          (v) => (v as List)?.map((e) => e as int)?.toList()),
      backdropPath: $checkedConvert(json, 'backdrop_path', (v) => v as String),
      adult: $checkedConvert(json, 'adult', (v) => v as bool),
      overview: $checkedConvert(json, 'overview', (v) => v as String),
      releaseDate: $checkedConvert(json, 'release_date', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {
    'voteCount': 'vote_count',
    'voteAverage': 'vote_average',
    'posterPath': 'poster_path',
    'originalLanguage': 'original_language',
    'originalTitle': 'original_title',
    'genreIds': 'genre_ids',
    'backdropPath': 'backdrop_path',
    'releaseDate': 'release_date'
  });
}
