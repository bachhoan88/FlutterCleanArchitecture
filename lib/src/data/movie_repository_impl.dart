import 'package:flutter_clean_architecture/src/constants.dart';
import 'package:flutter_clean_architecture/src/data/app_error.dart';
import 'package:flutter_clean_architecture/src/data/mapper/exception_mapper.dart';
import 'package:flutter_clean_architecture/src/data/model/movie_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/movie_image_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/movie_info_data_model.dart';
import 'package:flutter_clean_architecture/src/data/remote/api/movie_api.dart';
import 'package:flutter_clean_architecture/src/domain/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _movieApi;
  final String _apiKey;
  final ExceptionMapper _exceptionMapper;

  MovieRepositoryImpl(this._movieApi, String languageCode, {String? apiKey, ExceptionMapper? mapper})
      : _apiKey = apiKey ?? Constants.shared().apiKey,
        _exceptionMapper = mapper ?? ExceptionMapper(languageCode: languageCode);

  @override
  Future<List<MovieDataModel>> fetchMovies(String? type) async {
    final response = await _movieApi.fetchMovies(type ?? '', _apiKey)
        .catchError((e) async => throw await _exceptionMapper.mapperTo(AppError.from(e)));
    return response.movies ?? [];
  }

  @override
  Future<MovieImageDataModel> getMovieImages(int movieId) {
    return _movieApi.getMovieImages(movieId, _apiKey)
        .catchError((e) async => throw await _exceptionMapper.mapperTo(AppError.from(e)));
  }

  @override
  Future<MovieInfoDataModel> getMovieInfo(int movieId) {
    return _movieApi.getMovieInfo(movieId, _apiKey)
        .catchError((e) async => throw await _exceptionMapper.mapperTo(AppError.from(e)));
  }
}