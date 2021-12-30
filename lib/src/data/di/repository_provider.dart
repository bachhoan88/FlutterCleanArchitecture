import 'package:flutter_clean_architecture/src/presentation/di/app_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_clean_architecture/src/data/local/pref/app_pref.dart';
import 'package:flutter_clean_architecture/src/data/local/pref/pref_helper.dart';
import 'package:flutter_clean_architecture/src/data/movie_repository_impl.dart';
import 'package:flutter_clean_architecture/src/domain/repository/movie_repository.dart';
import 'network_provider.dart';

final prefHelperProvider = Provider<PrefHelper>(
  (ref) => AppPrefs(),
);

final movieRepositoryProvider = Provider<MovieRepository>(
  (ref) => MovieRepositoryImpl(ref.watch(movieApiProvider), ref.watch(localeCodeProvider)),
);