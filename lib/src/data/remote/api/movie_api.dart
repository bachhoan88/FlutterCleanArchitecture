import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:river_movies/src/data/model/models.dart';
import 'package:river_movies/src/data/remote/response/movie_response.dart';

part 'movie_api.g.dart';

@RestApi()
abstract class MovieApi {
  factory MovieApi(Dio dioBuilder) = _MovieApi;

  @GET('/{type}')
  Future<MovieResponse> fetchMovies(@Path('type') String type, @Query('api_key') String key);

  @GET('/{id}/images')
  Future<MovieImageDataModel> getMovieImages(@Path('id') int movieId, @Query('api_key') String key);

  @GET('/{id}')
  Future<MovieInfoDataModel> getMovieInfo(@Path('id') int movieId, @Query('api_key') String key);
}