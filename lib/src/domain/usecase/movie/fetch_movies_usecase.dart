import 'package:flutter_clean_architecture/src/data/model/models.dart';
import 'package:flutter_clean_architecture/src/domain/mapper/mapper.dart';
import 'package:flutter_clean_architecture/src/domain/repository/movie_repository.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/usecase.dart';

class FetchMovieUseCase extends UseCase<MovieType, List<MovieDataModel>> {
  final MovieRepository _movieRepository;
  final MovieTypeMapper _mapper;

  FetchMovieUseCase({required MovieRepository repository, MovieTypeMapper? mapper})
      : _movieRepository = repository,
        _mapper = mapper ?? MovieTypeMapper();

  @override
  Future<List<MovieDataModel>> createObservable(MovieType params) {
    return _mapper.mapperTo(params).then(_movieRepository.fetchMovies);
  }
}

enum MovieType { nowPlaying, popular, topRated, upcoming }

class MovieTypeMapper extends Mapper<MovieType, String> {
  @override
  Future<MovieType> mapperFrom(String data) => throw UnimplementedError();

  @override
  Future<String> mapperTo(MovieType data) async {
    switch (data) {
      case MovieType.popular:
        return 'popular';

      case MovieType.topRated:
        return 'top_rated';

      case MovieType.upcoming:
        return 'upcoming';

      case MovieType.nowPlaying:
      default:
        return 'now_playing';
    }
  }
}
