import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:river_movies/constants.dart';
import 'package:river_movies/src/data/model/movie.dart';
import 'package:river_movies/src/data/model/movie_image.dart';
import 'package:river_movies/src/data/model/movie_info.dart';
import 'package:river_movies/src/data/remote/api/movie_api.dart';
import 'package:river_movies/src/data/remote/builder/dio_builder.dart';
import 'package:river_movies/src/data/remote/response/movie_response.dart';

class MovieApiImpl implements MovieApi {
  final DioBuilder _dio;

  MovieApiImpl({@required DioBuilder dio}) : _dio = dio;

  @override
  Future<List<Movie>> fetchMovies(String type) {
    final key = Constants.of().apiKey;
    final response = _dio.get<Map<String, dynamic>>(
      '/$type',
      queryParameters: <String, String>{
        'api_key': key,
      },
      options: buildCacheOptions(const Duration(seconds: 5)),
    );

    print('res: ${response == null}, ${_dio == null}, ${_dio?.httpClientAdapter == null}');
    return response.then((response) => MovieResponse.fromJson(response.data).movies);
  }

  @override
  Future<MovieImage> getMovieImages(int movieId) {
    final key = Constants.of().apiKey;
    return _dio
        .get<Map<String, dynamic>>(
          '/$movieId/images',
          queryParameters: <String, String>{
            'api_key': key,
          },
          options: buildCacheOptions(const Duration(seconds: 5)),
        )
        .then((response) => MovieImage.fromJson(response.data));
  }

  @override
  Future<MovieInfo> getMovieInfo(int movieId) {
    final key = Constants.of().apiKey;
    return _dio
        .get<Map<String, dynamic>>(
          '/$movieId',
          queryParameters: <String, String>{
            'api_key': key,
          },
          options: buildCacheOptions(const Duration(seconds: 5)),
        )
        .then((response) => MovieInfo.fromJson(response.data));
  }
}
