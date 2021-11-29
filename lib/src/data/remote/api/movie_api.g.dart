// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _MovieApi implements MovieApi {
  _MovieApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<MovieResponse> fetchMovies(type, key) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': key};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MovieResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/${type}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MovieResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MovieImageDataModel> getMovieImages(movieId, key) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': key};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MovieImageDataModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/${movieId}/images',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MovieImageDataModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MovieInfoDataModel> getMovieInfo(movieId, key) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': key};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MovieInfoDataModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/${movieId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MovieInfoDataModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
