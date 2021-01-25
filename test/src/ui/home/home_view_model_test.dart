import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:mockito/mockito.dart';
import 'package:river_movies/src/data/app_error.dart';
import 'package:river_movies/src/data/model/models.dart';
import 'package:river_movies/src/data/model/result.dart';
import 'package:river_movies/src/di/provider/repository_provider.dart';
import 'package:river_movies/src/di/provider/view_model_provider.dart';
import 'package:river_movies/src/ui/home/home_view_model.dart';

import '../../mock/movie_repository_mock.dart';
import '../../movie_factory.dart';

void main() {
  test('test home view model fetch slide movies success', () async {
    final movies = List<Movie>.from([createMovie]);
    final repositoryMock = MovieRepositoryMock();
    when(repositoryMock.fetchMovies(HomeViewModel.nowPlaying)).thenAnswer((_) async => Result.success(data: movies));

    final container = ProviderContainer(
      overrides: [movieRepositoryProvider.overrideWithValue(repositoryMock)],
    );
    final viewModel = container.read(homeViewModelProvider);

    await expectLater(viewModel.fetchSliderMovies(), completion(Result.success(data: movies)));
  });

  test('test home view model fetch categories movies success', () async {
    final movies = List<Movie>.from([createMovie]);
    final repositoryMock = MovieRepositoryMock();
    when(repositoryMock.fetchMovies(HomeViewModel.upcoming)).thenAnswer((_) async => Result.success(data: movies));

    final container = ProviderContainer(
      overrides: [movieRepositoryProvider.overrideWithValue(repositoryMock)],
    );
    final viewModel = container.read(homeViewModelProvider);

    await expectLater(viewModel.fetchCategories(), completion(Result.success(data: movies)));
  });

  test('test home view model fetch categories movies success', () async {
    final movies = List<Movie>.from([createMovie]);
    final repositoryMock = MovieRepositoryMock();
    when(repositoryMock.fetchMovies(HomeViewModel.topRated)).thenAnswer((_) async => Result.success(data: movies));

    final container = ProviderContainer(
      overrides: [movieRepositoryProvider.overrideWithValue(repositoryMock)],
    );
    final viewModel = container.read(homeViewModelProvider);

    await expectLater(viewModel.fetchMyList(), completion(Result.success(data: movies)));
  });

  test('test home view model fetch categories movies success', () async {
    final movies = List<Movie>.from([createMovie]);
    final repositoryMock = MovieRepositoryMock();
    when(repositoryMock.fetchMovies(HomeViewModel.popular)).thenAnswer((_) async => Result.success(data: movies));

    final container = ProviderContainer(
      overrides: [movieRepositoryProvider.overrideWithValue(repositoryMock)],
    );
    final viewModel = container.read(homeViewModelProvider);

    await expectLater(viewModel.fetchPopular(), completion(Result.success(data: movies)));
  });
}