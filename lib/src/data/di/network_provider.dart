import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:river_movies/src/data/remote/api/movie_api.dart';
import 'package:river_movies/src/data/remote/builder/dio_builder.dart';

final dioBuilderProvider = Provider<Dio>(
  (ref) => DioBuilder.getInstance(),
);

final movieApiProvider = Provider<MovieApi>(
  (ref) => MovieApi(ref.read(dioBuilderProvider)),
);
