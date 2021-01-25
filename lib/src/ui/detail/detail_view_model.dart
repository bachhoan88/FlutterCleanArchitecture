import 'package:flutter/cupertino.dart';
import 'package:river_movies/src/data/model/models.dart';
import 'package:river_movies/src/data/model/result.dart';
import 'package:river_movies/src/data/movie_repository.dart';

class DetailViewModel extends ChangeNotifier {
  final MovieRepository _movieRepository;
  bool expanded = false;

  Result<MovieInfo> movieInfo;
  Result<MovieImage> movieImages;

  DetailViewModel(this._movieRepository);

  void toggleExpand() {
    expanded = !expanded;
    notifyListeners();
  }

  Future<void> fetchMovieInfo(int movieId) {
    return _movieRepository
        .getMovieInfo(movieId)
        .then((value) => movieInfo = value)
        .whenComplete(() => notifyListeners);
  }

  Future<void> fetchMovieImages(int movieId) {
    return _movieRepository
        .getMovieImages(movieId)
        .then((value) => movieImages = value)
        .whenComplete(() => notifyListeners);
  }

  String getCategories(MovieInfo info) {
    var result = info.genres?.first?.name ?? '';
    for (var i = 1; i < info.genres.length; i++) {
      result += ', ${info.genres[i].name}';
    }
    return result;
  }

  String getYear(MovieInfo info) {
    var result = '';
    if ((info.releaseDate?.length ?? 0) > 4) {
      result = info.releaseDate.substring(0, 4);
    }

    return result;
  }

  String getCountry(MovieInfo info) {
    var result =  '';
    if ((info.countries?.length ?? 0) > 0) {
      for (var i = 0; i < info.countries.length; i++) {
        result += info.countries[i].code;
        if (i < info.countries.length - 1) {
          result += ', ';
        }
      }
    }
    return result;
  }
}