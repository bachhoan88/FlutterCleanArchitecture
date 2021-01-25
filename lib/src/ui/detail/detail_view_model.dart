import 'package:flutter/cupertino.dart';
import 'package:river_movies/src/data/movie_repository.dart';

class DetailViewModel extends ChangeNotifier {
  final MovieRepository _movieRepository;
  DetailViewModel(this._movieRepository);
}