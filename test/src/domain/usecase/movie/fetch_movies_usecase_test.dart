
import 'package:flutter_clean_architecture/src/domain/repository/movie_repository.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/movie/fetch_movies_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../movie_factory.dart';
import 'fetch_movies_usecase_test.mocks.dart';

@GenerateMocks([MovieRepository])
void main() {
  group('test fetch movies use case', () {
    late FetchMovieUseCase fetchMovieUseCase;
    late MovieRepository repository;
    final typeMapper = MovieTypeMapper();

    setUp(() {
      repository = MockMovieRepository();
      fetchMovieUseCase = FetchMovieUseCase(repository: repository, mapper: typeMapper);
    });

    test('test get movies success', () async {
      const type = MovieType.popular;
      final movies = [createMovie];

      final id = await typeMapper.mapperTo(type);
      when(repository.fetchMovies(id)).thenAnswer((_) async => movies);

      final data = await fetchMovieUseCase.createObservable(type);
      expect(data, movies);
    });

    test('test get movie fail', () async {
      const type = MovieType.popular;
      final throwable = Exception('message');

      final id = await typeMapper.mapperTo(type);
      when(repository.fetchMovies(id)).thenThrow(throwable);

      expect(() => fetchMovieUseCase.createObservable(type), throwsA(isInstanceOf<Exception>()));
    });
  });
}