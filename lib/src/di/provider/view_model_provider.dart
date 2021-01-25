import 'package:hooks_riverpod/all.dart';
import 'package:river_movies/src/di/provider/repository_provider.dart';
import 'package:river_movies/src/ui/base/loading_state_view_model.dart';
import 'package:river_movies/src/ui/detail/detail_view_model.dart';
import 'package:river_movies/src/ui/home/home_view_model.dart';

final loadingStateProvider = ChangeNotifierProvider(
      (ref) => LoadingStateViewModel(),
);

final homeViewModelProvider = ChangeNotifierProvider<HomeViewModel>(
  (ref) => HomeViewModel(ref.read(movieRepositoryProvider)),
);

final detailViewModelProvider = ChangeNotifierProvider<DetailViewModel>(
      (ref) => DetailViewModel(ref.read(movieRepositoryProvider)),
);