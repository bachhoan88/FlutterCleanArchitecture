import 'package:flutter/cupertino.dart';
import 'package:river_movies/src/data/model/models.dart';
import 'package:river_movies/src/data/model/result.dart';
import 'package:river_movies/src/data/movie_repository.dart';

class HomeViewModel extends ChangeNotifier {
  final MovieRepository _movieRepository;

  static const String nowPlaying = 'now_playing';
  static const String popular = 'popular';
  static const String topRated = 'top_rated';
  static const String upcoming = 'upcoming';

  Result<List<Movie>> sliderMovies;

  Result<List<Movie>> categoryMovies;

  Result<List<Movie>> myListMovies;
  
  Result<List<Movie>> popularMovies;

  HomeViewModel(this._movieRepository);

  Future<void> fetchSliderMovies() {
    return _movieRepository
        .fetchMovies(nowPlaying)
        .then((value) => sliderMovies = value)
        .whenComplete(() => notifyListeners);
  }

  Future<void> fetchCategories() {
    return _movieRepository
        .fetchMovies(upcoming)
        .then((value) => categoryMovies = value)
        .whenComplete(() => notifyListeners);
  }

  Future<void> fetchMyList() {
    return _movieRepository
        .fetchMovies(topRated)
        .then((value) => myListMovies = value)
        .whenComplete(() => notifyListeners);
  }

  Future<void> fetchPopular() {
    return _movieRepository
        .fetchMovies(popular)
        .then((value) => popularMovies = value)
        .whenComplete(() => notifyListeners);
  }
}
