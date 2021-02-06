// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieResponse _$MovieResponseFromJson(Map<String, dynamic> json) {
  return $checkedNew('MovieResponse', json, () {
    final val = MovieResponse(
      page: $checkedConvert(json, 'page', (v) => v as int),
      movies: $checkedConvert(
          json,
          'results',
          (v) => (v as List)
              ?.map((e) => e == null
                  ? null
                  : MovieDataModel.fromJson(e as Map<String, dynamic>))
              ?.toList()),
      totalPages: $checkedConvert(json, 'total_pages', (v) => v as int),
      totalResult: $checkedConvert(json, 'total_results', (v) => v as int),
    );
    return val;
  }, fieldKeyMap: const {
    'movies': 'results',
    'totalPages': 'total_pages',
    'totalResult': 'total_results'
  });
}
