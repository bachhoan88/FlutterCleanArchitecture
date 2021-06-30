import 'package:flutter_clean_architecture/src/data/model/models.dart';
import 'package:flutter_clean_architecture/src/domain/repository/movie_repository.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/usecase.dart';

class GetMovieInfoUseCase extends UseCase<int, MovieInfoDataModel> {
  final MovieRepository _movieRepository;
  GetMovieInfoUseCase({required MovieRepository repository}) : _movieRepository = repository;

  @override
  Future<MovieInfoDataModel> createObservable(int params) {
    return _movieRepository.getMovieInfo(params);
  }
}