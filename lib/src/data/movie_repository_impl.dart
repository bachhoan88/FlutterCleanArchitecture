import 'package:river_movies/src/data/app_error.dart';
import 'package:river_movies/src/data/mapper/exception_mapper.dart';
import 'package:river_movies/src/data/model/movie_data_model.dart';
import 'package:river_movies/src/data/model/movie_image_data_model.dart';
import 'package:river_movies/src/data/model/movie_info_data_model.dart';
import 'package:river_movies/src/data/remote/api/movie_api.dart';
import 'package:river_movies/src/domain/repository/movie_repository.dart';

import '../../constants.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _movieApi;
  final String _apiKey;
  final ExceptionMapper _exceptionMapper;

  MovieRepositoryImpl(this._movieApi, {String apiKey, ExceptionMapper mapper})
      : _apiKey = apiKey ?? Constants.shared().apiKey,
        _exceptionMapper = mapper ?? ExceptionMapper();

  @override
  Future<List<MovieDataModel>> fetchMovies(String type) {
    return _movieApi.fetchMovies(type, _apiKey)
        .then((value) => value.movies)
        .catchError((e) => throw _exceptionMapper.mapperTo(AppError(e)));
  }

  @override
  Future<MovieImageDataModel> getMovieImages(int movieId) {
    return _movieApi.getMovieImages(movieId, _apiKey)
        .catchError((e) => throw _exceptionMapper.mapperTo(AppError(e)));
  }

  @override
  Future<MovieInfoDataModel> getMovieInfo(int movieId) {
    return _movieApi.getMovieInfo(movieId, _apiKey)
        .catchError((e) => throw _exceptionMapper.mapperTo(AppError(e)));
  }
}