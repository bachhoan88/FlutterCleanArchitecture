import 'package:flutter/cupertino.dart';
import 'package:river_movies/src/data/model/models.dart';
import 'package:river_movies/src/domain/repository/movie_repository.dart';
import 'package:river_movies/src/domain/usecase/usecase.dart';

class GetMovieInfoUseCase extends UseCase<int, MovieInfoDataModel> {
  final MovieRepository _movieRepository;
  GetMovieInfoUseCase({@required MovieRepository repository}) : _movieRepository = repository;

  @override
  Future<MovieInfoDataModel> createObservable(int movieId) {
    return _movieRepository.getMovieInfo(movieId);
  }
}