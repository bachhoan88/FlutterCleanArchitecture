// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDataModel _$MovieDataModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MovieDataModel',
      json,
      ($checkedConvert) {
        final val = MovieDataModel(
          id: $checkedConvert('id', (v) => v as int?),
          voteCount: $checkedConvert('vote_count', (v) => v as int?),
          video: $checkedConvert('video', (v) => v as bool?),
          voteAverage:
              $checkedConvert('vote_average', (v) => (v as num?)?.toDouble()),
          title: $checkedConvert('title', (v) => v as String?),
          popularity:
              $checkedConvert('popularity', (v) => (v as num?)?.toDouble()),
          posterPath: $checkedConvert('poster_path', (v) => v as String?),
          originalLanguage:
              $checkedConvert('original_language', (v) => v as String?),
          originalTitle: $checkedConvert('original_title', (v) => v as String?),
          genreIds: $checkedConvert('genre_ids',
              (v) => (v as List<dynamic>?)?.map((e) => e as int).toList()),
          backdropPath: $checkedConvert('backdrop_path', (v) => v as String?),
          adult: $checkedConvert('adult', (v) => v as bool?),
          overview: $checkedConvert('overview', (v) => v as String?),
          releaseDate: $checkedConvert('release_date', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'voteCount': 'vote_count',
        'voteAverage': 'vote_average',
        'posterPath': 'poster_path',
        'originalLanguage': 'original_language',
        'originalTitle': 'original_title',
        'genreIds': 'genre_ids',
        'backdropPath': 'backdrop_path',
        'releaseDate': 'release_date'
      },
    );
