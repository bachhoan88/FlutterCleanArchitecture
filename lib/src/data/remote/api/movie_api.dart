import 'package:river_movies/src/data/model/models.dart';

abstract class MovieApi {
  Future<List<Movie>> fetchMovies(String type);

  Future<MovieInfo> getMovieInfo(int movieId);

  Future<MovieImage> getMovieImages(int movieId);
}