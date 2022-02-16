import 'package:flutter_clean_architecture/src/presentation/base/loading_state_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/di/use_case_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/detail/detail_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/home/home_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loadingStateProvider = ChangeNotifierProvider(
  (ref) => LoadingStateViewModel(),
);

final homeViewModelProvider = ChangeNotifierProvider<HomeViewModel>(
  (ref) => HomeViewModel(fetchMovieUseCase: ref.watch(fetchMoviesUseCaseProvider)),
);

final detailViewModelProvider = ChangeNotifierProvider.autoDispose.family<DetailViewModel, int>(
  (ref, id) => DetailViewModel(
    getMovieImageUseCase: ref.watch(getMovieImageUseCaseProvider),
    getMovieInfoUseCase: ref.watch(getMovieInfoUseCaseProvider),
  ),
);
