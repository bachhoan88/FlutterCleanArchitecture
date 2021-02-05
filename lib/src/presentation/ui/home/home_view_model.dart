import 'package:hooks_riverpod/all.dart';
import 'package:river_movies/src/domain/usecase/movie/fetch_movies_usecase.dart';
import 'package:river_movies/src/presentation/base/base_view_model.dart';
import 'package:river_movies/src/presentation/di/use_case_provider.dart';
import 'package:river_movies/src/presentation/model/movie_item.dart';

class HomeViewModel extends BaseViewModel {}

final fetchMoviesProvider = StateNotifierProvider.autoDispose.family<GetMovies, MovieType>((ref, type) => GetMovies(fetchMovieUseCase: ref.read(fetchMoviesUseCaseProvider), type: type));

class GetMovies extends StateNotifier<AsyncValue<List<MovieItem>>> {
  final FetchMovieUseCase _fetchMovieUseCase;
  final MovieItemMapper _movieItemMapper;
  final MovieType _movieType;

  GetMovies({FetchMovieUseCase fetchMovieUseCase, MovieItemMapper mapper, MovieType type})
      : _fetchMovieUseCase = fetchMovieUseCase,
        _movieItemMapper = mapper ?? MovieItemMapper(),
        _movieType = type ?? MovieType.upcoming,
        super(AsyncValue.loading()) {
    _createObserve();
  }

  void _createObserve() {
    _fetchMovieUseCase.createObservable(_movieType).then((value) => state = AsyncValue.data(value.map(_movieItemMapper.mapperTo).toList())).catchError((error) {
      state = AsyncValue.error(error);
    });
  }
}
