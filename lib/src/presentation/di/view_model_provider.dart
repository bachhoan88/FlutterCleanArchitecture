import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:river_movies/src/presentation/base/loading_state_view_model.dart';
import 'package:river_movies/src/presentation/di/use_case_provider.dart';
import 'package:river_movies/src/presentation/ui/detail/detail_view_model.dart';
import 'package:river_movies/src/presentation/ui/home/home_view_model.dart';

final loadingStateProvider = ChangeNotifierProvider(
  (ref) => LoadingStateViewModel(),
);

final homeViewModelProvider = ChangeNotifierProvider<HomeViewModel>(
  (ref) => HomeViewModel(fetchMovieUseCase: ref.read(fetchMoviesUseCaseProvider)),
);

final detailViewModelProvider = ChangeNotifierProvider.autoDispose<DetailViewModel>(
  (ref) => DetailViewModel(
    getMovieImageUseCase: ref.read(getMovieImageUseCaseProvider),
    getMovieInfoUseCase: ref.read(getMovieInfoUseCaseProvider),
  ),
);
