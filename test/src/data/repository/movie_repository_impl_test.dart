import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:river_movies/src/data/model/models.dart';
import 'package:river_movies/src/data/model/result.dart';
import 'package:river_movies/src/data/repository/movie_repository_impl.dart';

import '../../mock/movie_api_mock.dart';
import '../../movie_factory.dart';

void main() {
  test('test fetch movies success', () async {
    final movies = List<Movie>.from([createMovie]);
    final type = 'type';

    final movieApi = MovieApiMock();
    final movieRepositoryImpl = MovieRepositoryImpl(movieApi: movieApi);

    when(movieApi.fetchMovies(type)).thenAnswer((_) async => movies);

    expect(await movieRepositoryImpl.fetchMovies(type), isA<Result<List<Movie>>>());
    expect(await movieRepositoryImpl.fetchMovies(type), Result.success(data: movies));
  });
}
