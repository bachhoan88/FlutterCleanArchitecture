import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:river_movies/src/domain/usecase/movie/fetch_movies_usecase.dart';
import 'package:river_movies/src/presentation/base/base_view_model.dart';
import 'package:river_movies/src/presentation/model/movie_view_data_model.dart';

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

  HomeViewModel({FetchMovieUseCase fetchMovieUseCase, MovieViewDataModelMapper mapper, MovieType type})
      : _fetchMovieUseCase = fetchMovieUseCase,
        _movieItemMapper = mapper ?? MovieViewDataModelMapper() {
    getMovieWithType(MovieType.nowPlaying);
    getMovieWithType(MovieType.topRated);
    getMovieWithType(MovieType.upcoming);
    getMovieWithType(MovieType.popular);
  }

  void getMovieWithType(MovieType type) {
    _fetchMovieUseCase.createObservable(type).then((value) {
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
    }).catchError((error) {
      switch (type) {
        case MovieType.nowPlaying:
          _nowPlayingMovies = AsyncValue.error(error);
          break;

        case MovieType.topRated:
          _myListMovies = AsyncValue.error(error);
          break;

        case MovieType.upcoming:
          _categoryMovies = AsyncValue.error(error);
          break;

        case MovieType.popular:
          _popularMovies = AsyncValue.error(error);
          break;

        default:
          break;
      }
    }).whenComplete(notifyListeners);
  }
}
