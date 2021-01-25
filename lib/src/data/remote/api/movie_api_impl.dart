import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:river_movies/constants.dart';
import 'package:river_movies/src/data/model/movie.dart';
import 'package:river_movies/src/data/model/movie_image.dart';
import 'package:river_movies/src/data/model/movie_info.dart';
import 'package:river_movies/src/data/remote/api/movie_api.dart';
import 'package:river_movies/src/data/remote/response/movie_response.dart';

class MovieApiImpl implements MovieApi {
  final Dio _dio;

  MovieApiImpl({@required Dio dio}) : _dio = dio;

  @override
  Future<List<Movie>> fetchMovies(String type) {
    final key = Constants.of().apiKey;
    return _dio
        .get<Map<String, dynamic>>(
          '/$type',
          queryParameters: <String, String>{
            'api_key': key,
          },
          options: buildCacheOptions(const Duration(seconds: 5)),
        )
        .then((response) => MovieResponse.fromJson(response.data).movies);
  }

  @override
  Future<MovieImage> getMovieImages(int movieId) {
    throw UnimplementedError();
  }

  @override
  Future<MovieInfo> getMovieInfo(int movieId) {
    throw UnimplementedError();
  }
}
