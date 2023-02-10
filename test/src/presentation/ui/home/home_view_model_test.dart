import 'package:flutter_clean_architecture/src/domain/exception/on_page_exception.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/movie/fetch_movies_usecase.dart';
import 'package:flutter_clean_architecture/src/presentation/model/movie_view_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/home/home_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../movie_factory.dart';
import 'home_view_model_test.mocks.dart';

@GenerateMocks([FetchMovieUseCase])
void main() {
  group('Test get movies', () {
    late FetchMovieUseCase fetchMovieUseCase;
    late HomeViewModel viewModel;

    final mapper = MovieViewDataModelMapper();
    final movies = [createMovie];

    setUp(() {
      fetchMovieUseCase = MockFetchMovieUseCase();
      // need given data before constructor [HomeViewModel]
      const popular = MovieType.popular;
      const nowPlaying = MovieType.nowPlaying;
      const topRate = MovieType.topRated;
      const upcoming = MovieType.upcoming;

      when(fetchMovieUseCase.createObservable(popular)).thenAnswer((_) async => movies);
      when(fetchMovieUseCase.createObservable(nowPlaying)).thenAnswer((_) async => movies);
      when(fetchMovieUseCase.createObservable(topRate)).thenAnswer((_) async => movies);
      when(fetchMovieUseCase.createObservable(upcoming)).thenAnswer((_) async => movies);

      viewModel = HomeViewModel(fetchMovieUseCase: fetchMovieUseCase, mapper: mapper);
    });

    test('Test get movie on constructor success', () async {
      expect(viewModel.nowPlayingMovies.asData?.value.first.id, movies.first.id);
      expect(viewModel.categoryMovies.asData?.value.first.id, movies.first.id);
      expect(viewModel.myListMovies.asData?.value.first.id, movies.first.id);
      expect(viewModel.popularMovies.asData?.value.first.id, movies.first.id);
    });

    testWidgets('Test get movies success', (WidgetTester tester) async {
      // create fake data
      final others = [createMovie, createMovie2];
      const popular = MovieType.popular;

      // given data for mock
      when(fetchMovieUseCase.createObservable(popular)).thenAnswer((_) async => others);

      // call function
      viewModel.getMovieWithType(popular, retry: true);

      // wait for mapper success
      await tester.pump(const Duration(milliseconds: 50));

      // compare result
      expect(viewModel.popularMovies.asData?.value.length, others.length);
    });

    testWidgets('Test get movies fail', (WidgetTester tester) async {
      final throwable = OnPageException(-1, 'message');
      const popular = MovieType.popular;

      // given data for mock
      when(fetchMovieUseCase.createObservable(popular)).thenThrow(throwable);

      // call function
      viewModel.getMovieWithType(popular);

      // wait fore mapper
      await tester.pump(const Duration(milliseconds: 50));

      // compare
      expect(viewModel.popularMovies, AsyncValue<List<MovieViewDataModel>>.error(throwable, StackTrace.empty));
    });
  });
}
