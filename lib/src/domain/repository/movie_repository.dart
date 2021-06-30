import '../../data/model/models.dart';

abstract class MovieRepository {
  Future<List<MovieDataModel>> fetchMovies(String type);

  Future<MovieInfoDataModel> getMovieInfo(int movieId);

  Future<MovieImageDataModel> getMovieImages(int movieId);
}
