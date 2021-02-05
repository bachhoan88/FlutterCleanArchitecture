import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:river_movies/src/data/base/result.dart';
import 'package:river_movies/src/data/model/models.dart';
import 'package:river_movies/src/domain/exception/alert_exception.dart';
import 'package:river_movies/src/domain/mapper/resource_mapper.dart';
import 'package:river_movies/src/domain/repository/movie_repository.dart';
import 'package:river_movies/src/domain/usecase/usecase.dart';
import 'package:river_movies/src/presentation/di/app_provider.dart';
import 'package:flutter_gen/gen_l10n/res.dart';

class GetMovieImageUseCase extends UseCase<int, MovieImageEntity> {
  final MovieRepository _movieRepository;
  final Reader _reader;
  final ResourceMapper _resourceMapper;

  GetMovieImageUseCase({@required MovieRepository repository, @required Reader reader, ResourceMapper mapper})
      : _movieRepository = repository,
        _reader = reader,
        _resourceMapper = mapper ?? ResourceMapper();

  @override
  Future<MovieImageEntity> createObservable(int movieId) {
    if (movieId == null) {
      return _resourceMapper.mapperTo(_reader(localeCodeProvider).state)
        .then((res) => throw AlertException(-1, res.movieIdInvalid));
    }

    return _movieRepository.getMovieImages(movieId);
  }
}
