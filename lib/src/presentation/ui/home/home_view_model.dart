import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/movie/fetch_movies_usecase.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/model/movie_view_data_model.dart';

class HomeViewModel extends BaseViewModel {
  final FetchMovieUseCase _fetchMovieUseCase;
  final MovieViewDataModelMapper _movieItemMapper;

  AsyncValue<List<MovieViewDataModel>> _nowPlayingMovies = const AsyncValue.loading();
  AsyncValue<List<MovieViewDataModel>> get nowPlayingMovies => _nowPlayingMovies;

  AsyncValue<List<MovieViewDataModel>> _myListMovies = const AsyncValue.loading();
  AsyncValue<List<MovieViewDataModel>> get myListMovies => _myListMovies;

  AsyncValue<List<MovieViewDataModel>> _categoryMovies = const AsyncValue.loading();
  AsyncValue<List<MovieViewDataModel>> get categoryMovies => _categoryMovies;

  AsyncValue<List<MovieViewDataModel>> _popularMovies = const AsyncValue.loading();
  AsyncValue<List<MovieViewDataModel>> get popularMovies => _popularMovies;

  HomeViewModel({required FetchMovieUseCase fetchMovieUseCase, MovieViewDataModelMapper? mapper})
      : _fetchMovieUseCase = fetchMovieUseCase,
        _movieItemMapper = mapper ?? MovieViewDataModelMapper() {
    getMovieWithType(MovieType.nowPlaying);
    getMovieWithType(MovieType.topRated);
    getMovieWithType(MovieType.upcoming);
    getMovieWithType(MovieType.popular);
  }

  void getMovieWithType(MovieType type, {bool retry = false}) async {
    if (retry) {
      switch (type) {
        case MovieType.nowPlaying:
          _nowPlayingMovies = const AsyncValue.loading();
          break;

        case MovieType.topRated:
          _myListMovies = const AsyncValue.loading();
          break;

        case MovieType.upcoming:
          _categoryMovies = const AsyncValue.loading();
          break;

        case MovieType.popular:
          _popularMovies = const AsyncValue.loading();
          break;

        default:
          break;
      }
      notifyListeners();
    }

    try {
      final value = await _fetchMovieUseCase.createObservable(type);
      switch (type) {
        case MovieType.nowPlaying:
          _nowPlayingMovies = AsyncValue.data(value.map(_movieItemMapper.mapperTo).toList());
          break;

        case MovieType.topRated:
          _myListMovies = AsyncValue.data(value.map(_movieItemMapper.mapperTo).toList());
          break;

        case MovieType.upcoming:
          _categoryMovies = AsyncValue.data(value.map(_movieItemMapper.mapperTo).toList());
          break;

        case MovieType.popular:
          _popularMovies = AsyncValue.data(value.map(_movieItemMapper.mapperTo).toList());
          break;

        default:
          break;
      }
    } on Exception catch (error) {
      setThrowable(error);

      if (error is BaseException) {
        switch (type) {
          case MovieType.nowPlaying:
            _nowPlayingMovies = AsyncValue.error(error, StackTrace.empty);
            break;

          case MovieType.topRated:
            _myListMovies = AsyncValue.error(error, StackTrace.empty);
            break;

          case MovieType.upcoming:
            _categoryMovies = AsyncValue.error(error, StackTrace.empty);
            break;

          case MovieType.popular:
            _popularMovies = AsyncValue.error(error, StackTrace.empty);
            break;

          default:
            break;
        }
      }
    } finally {
      notifyListeners();
    }
  }
}
