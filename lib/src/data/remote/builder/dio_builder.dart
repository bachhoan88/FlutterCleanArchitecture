import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:river_movies/constants.dart';
// import 'package:ua_client_hints/ua_client_hints.dart';

class DioBuilder extends DioMixin implements Dio {
  // create basic information for request
  final String contentType = 'application/json';
  final int connectionTimeOutMls = 3000;
  final int readTimeOutMls = 3000;
  final int writeTimeOutMls = 3000;

  static DioBuilder getInstance() => DioBuilder._();

  DioBuilder._([BaseOptions options]) {
    options = BaseOptions(
      baseUrl: Constants.shared().endpoint,
      contentType: contentType,
      connectTimeout: connectionTimeOutMls,
      receiveTimeout: readTimeOutMls,
      sendTimeout: writeTimeOutMls,
    );

    this.options = options;

    // Config cache
    final cacheConfig = CacheConfig(baseUrl: Constants.shared().endpoint);
    interceptors.add(DioCacheManager(cacheConfig).interceptor as InterceptorsWrapper);

    // Debug mode
    if (kDebugMode) {
      interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    }

    // Add default user agent
    // interceptors.add(InterceptorsWrapper(onRequest: (options) async {
    //   options.headers.addAll(await userAgentClientHintsHeader());
    // }));

    // create default http client
    httpClientAdapter = DefaultHttpClientAdapter();
  }
}