import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:river_movies/src/data/di/repository_provider.dart';
import 'package:river_movies/src/domain/usecase/movie/fetch_movies_usecase.dart';
import 'package:river_movies/src/domain/usecase/movie/get_movie_image_usecase.dart';
import 'package:river_movies/src/domain/usecase/movie/get_movie_info_usecase.dart';

final fetchMoviesUseCaseProvider = Provider<FetchMovieUseCase>(
      (ref) => FetchMovieUseCase(repository: ref.read(movieRepositoryProvider)),
);

final getMovieInfoUseCaseProvider = Provider<GetMovieInfoUseCase>(
    (ref) => GetMovieInfoUseCase(repository: ref.read(movieRepositoryProvider)),
);

final getMovieImageUseCaseProvider = Provider<GetMovieImageUseCase>(
      (ref) => GetMovieImageUseCase(repository: ref.read(movieRepositoryProvider), reader: ref.read),
);