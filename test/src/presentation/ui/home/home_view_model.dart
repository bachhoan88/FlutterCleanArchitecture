import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:river_movies/src/domain/usecase/movie/fetch_movies_usecase.dart';
import '../../../mock/fetch_movie_usecase_mock.dart';
import '../../../movie_factory.dart';

void main() {
  group('Test get movies', () {
    test('Test get movie with type popular success', () async {
      final usecase = FetchMovieUseCaseMock();

      final type = MovieType.popular;
      final movies = [createMovie];

      when(usecase.createObservable(type)).thenAnswer((_) async => movies);

    });
  });
}
