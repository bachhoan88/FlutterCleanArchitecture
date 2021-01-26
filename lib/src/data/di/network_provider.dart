import 'package:dio/dio.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:river_movies/src/data/movie_repository_impl.dart';
import 'package:river_movies/src/data/remote/api/movie_api.dart';
import 'package:river_movies/src/data/remote/builder/dio_builder.dart';
import 'package:river_movies/src/domain/repository/movie_repository.dart';

final dioBuilderProvider = Provider<Dio>(
  (ref) => DioBuilder.getInstance(),
);

final movieApiProvider = Provider<MovieApi>(
    (ref) => MovieApi(ref.read(dioBuilderProvider)),
);