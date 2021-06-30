import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/movie/fetch_movies_usecase.dart';
import '../../../mock/fetch_movie_usecase_mock.dart';
import '../../../movie_factory.dart';

void main() {
  group('Test get movies', () {
    test('Test get movie with type popular success', () async {
      final usecase = FetchMovieUseCaseMock();

      const type = MovieType.popular;
      final movies = [createMovie];

      when(usecase.createObservable(type)).thenAnswer((_) async => movies);

    });
  });
}
