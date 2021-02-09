import 'package:hooks_riverpod/all.dart';
import 'package:river_movies/src/domain/usecase/movie/fetch_movies_usecase.dart';
import 'package:river_movies/src/presentation/base/base_view_model.dart';
import 'package:river_movies/src/presentation/di/use_case_provider.dart';
import 'package:river_movies/src/presentation/model/movie_view_data_model.dart';

class HomeViewModel extends BaseViewModel {}

final fetchMoviesProvider = StateNotifierProvider.autoDispose
    .family<GetMovies, MovieType>((ref, type) => GetMovies(fetchMovieUseCase: ref.read(fetchMoviesUseCaseProvider), type: type));

class GetMovies extends StateNotifier<AsyncValue<List<MovieViewDataModel>>> {
  final FetchMovieUseCase _fetchMovieUseCase;
  final MovieViewDataModelMapper _movieItemMapper;
  final MovieType _movieType;

  GetMovies({FetchMovieUseCase fetchMovieUseCase, MovieViewDataModelMapper mapper, MovieType type})
      : _fetchMovieUseCase = fetchMovieUseCase,
        _movieItemMapper = mapper ?? MovieViewDataModelMapper(),
        _movieType = type ?? MovieType.upcoming,
        super(AsyncValue.loading()) {
    _createObserve();
  }

  void _createObserve() {
    _fetchMovieUseCase
        .createObservable(_movieType)
        .then((value) => state = AsyncValue.data(value.map(_movieItemMapper.mapperTo).toList()))
        .catchError((error) {
      state = AsyncValue.error(error);
    });
  }
}
