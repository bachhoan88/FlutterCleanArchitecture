import 'package:river_movies/src/data/model/result.dart';

import 'model/models.dart';

abstract class MovieRepository {
  Future<Result<List<Movie>>> fetchMovies(String type);

  Future<Result<MovieInfo>> getMovieInfo(int movieId);

  Future<Result<MovieImage>> getMovieImages(int movieId);
}