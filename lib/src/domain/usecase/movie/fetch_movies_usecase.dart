import 'package:flutter/foundation.dart';
import 'package:river_movies/src/data/model/models.dart';
import 'package:river_movies/src/domain/mapper/mapper.dart';
import 'package:river_movies/src/domain/repository/movie_repository.dart';
import 'package:river_movies/src/domain/usecase/usecase.dart';

class FetchMovieUseCase extends UseCase<MovieType, List<MovieDataModel>> {
  final MovieRepository _movieRepository;
  final MovieTypeMapper _mapper;

  FetchMovieUseCase({@required MovieRepository repository, MovieTypeMapper mapper})
      : _movieRepository = repository,
        _mapper = mapper ?? MovieTypeMapper();

  @override
  Future<List<MovieDataModel>> createObservable(MovieType type) {
    return _mapper.mapperTo(type).then(_movieRepository.fetchMovies);
  }
}

enum MovieType { nowPlaying, popular, topRated, upcoming }

class MovieTypeMapper extends Mapper<MovieType, String> {
  @override
  Future<MovieType> mapperFrom(String data) => throw UnimplementedError();

  @override
  Future<String> mapperTo(MovieType type) async {
    switch (type) {
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
