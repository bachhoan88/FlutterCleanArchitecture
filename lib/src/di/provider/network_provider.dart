import 'package:hooks_riverpod/all.dart';
import 'package:river_movies/src/data/remote/api/movie_api.dart';
import 'package:river_movies/src/data/remote/api/movie_api_impl.dart';
import 'package:river_movies/src/data/remote/builder/dio_builder.dart';

final dioBuilderProvider = Provider(
  (ref) => DioBuilder.getInstance(),
);

final movieApiProvider = Provider<MovieApi>(
  (ref) => MovieApiImpl(dio: ref.read(dioBuilderProvider)),
);
