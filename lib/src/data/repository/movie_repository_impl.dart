import 'package:flutter/cupertino.dart';
import 'package:river_movies/src/data/model/movie.dart';
import 'package:river_movies/src/data/model/movie_image.dart';
import 'package:river_movies/src/data/model/movie_info.dart';
import 'package:river_movies/src/data/model/result.dart';
import 'package:river_movies/src/data/movie_repository.dart';
import 'package:river_movies/src/data/remote/api/movie_api.dart';

class MovieRepositoryImpl implements MovieRepository {

  final MovieApi _movieApi;

  MovieRepositoryImpl({@required MovieApi movieApi}) : _movieApi = movieApi;

  @override
  Future<Result<List<Movie>>> fetchMovies(String type) {
    return Result.guardFuture(() => _movieApi.fetchMovies(type));
  }

  @override
  Future<Result<MovieImage>> getMovieImages(int movieId) {
    // TODO: implement getMovieImages
    throw UnimplementedError();
  }

  @override
  Future<Result<MovieInfo>> getMovieInfo(int movieId) {
    // TODO: implement getMovieInfo
    throw UnimplementedError();
  }

}