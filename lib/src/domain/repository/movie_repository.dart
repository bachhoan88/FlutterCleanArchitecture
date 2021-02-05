import 'package:river_movies/src/data/base/result.dart';

import '../../data/model/models.dart';

abstract class MovieRepository {
  Future<List<MovieEntity>> fetchMovies(String type);

  Future<MovieInfoEntity> getMovieInfo(int movieId);

  Future<MovieImageEntity> getMovieImages(int movieId);
}