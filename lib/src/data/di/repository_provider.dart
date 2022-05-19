import 'package:flutter_clean_architecture/src/data/local/app_storage.dart';
import 'package:flutter_clean_architecture/src/data/movie_repository_impl.dart';
import 'package:flutter_clean_architecture/src/domain/repository/movie_repository.dart';
import 'package:flutter_clean_architecture/src/presentation/di/app_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'network_provider.dart';

final appStorageProvider = Provider<AppStorage>(
  (ref) => AppStorage.init(),
);

final movieRepositoryProvider = Provider<MovieRepository>(
  (ref) => MovieRepositoryImpl(ref.watch(movieApiProvider), ref.watch(localeCodeProvider)),
);
