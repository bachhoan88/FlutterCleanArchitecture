import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:mockito/mockito.dart';
import 'package:river_movies/src/domain/usecase/movie/fetch_movies_usecase.dart';
import 'package:river_movies/src/presentation/model/movie_view_data_model.dart';

import '../../../mock/fetch_movie_usecase_mock.dart';
import '../../../movie_factory.dart';

void main() {
  group('Test get movies', () {
    test('Test get movie with type popular success', () async {
      final usecase = FetchMovieUseCaseMock();
      final mapper = MovieViewDataModelMapper();

      final type = MovieType.popular;
      final movies = [createMovie];

      when(usecase.createObservable(type)).thenAnswer((_) async => movies);

      final container = ProviderContainer();
    });
  });
}
