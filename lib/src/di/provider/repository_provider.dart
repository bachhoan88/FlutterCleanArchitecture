import 'package:hooks_riverpod/all.dart';
import 'package:river_movies/src/data/local/pref/app_pref.dart';
import 'package:river_movies/src/data/local/pref/pref_helper.dart';
import 'package:river_movies/src/data/movie_repository.dart';
import 'package:river_movies/src/data/repository/movie_repository_impl.dart';

import 'network_provider.dart';

final prefHelperProvider = Provider<PrefHelper>(
  (ref) => AppPrefs(),
);

final movieRepositoryProvider = Provider<MovieRepository>(
  (ref) => MovieRepositoryImpl(movieApi: ref.read(movieApiProvider)),
);