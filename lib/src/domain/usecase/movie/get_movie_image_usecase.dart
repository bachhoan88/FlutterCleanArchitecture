import 'package:flutter_clean_architecture/src/data/model/models.dart';
import 'package:flutter_clean_architecture/src/domain/repository/movie_repository.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/usecase.dart';

class GetMovieImageUseCase extends UseCase<int, MovieImageDataModel> {
  final MovieRepository _movieRepository;

  GetMovieImageUseCase({required MovieRepository repository}) : _movieRepository = repository;

  @override
  Future<MovieImageDataModel> createObservable(int params) {
    return _movieRepository.getMovieImages(params);
  }
}