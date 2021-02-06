// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _MovieApi implements MovieApi {
  _MovieApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<MovieResponse> fetchMovies(type, key) async {
    ArgumentError.checkNotNull(type, 'type');
    ArgumentError.checkNotNull(key, 'key');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': key};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/$type',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = MovieResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<MovieImageDataModel> getMovieImages(movieId, key) async {
    ArgumentError.checkNotNull(movieId, 'movieId');
    ArgumentError.checkNotNull(key, 'key');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': key};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/$movieId/images',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = MovieImageDataModel.fromJson(_result.data);
    return value;
  }

  @override
  Future<MovieInfoDataModel> getMovieInfo(movieId, key) async {
    ArgumentError.checkNotNull(movieId, 'movieId');
    ArgumentError.checkNotNull(key, 'key');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': key};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/$movieId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = MovieInfoDataModel.fromJson(_result.data);
    return value;
  }
}
