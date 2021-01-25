import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:river_movies/constants.dart';
// import 'package:ua_client_hints/ua_client_hints.dart';

class DioBuilder extends DioMixin implements Dio {
  DioBuilder._([BaseOptions options]) {
    options = BaseOptions(
      baseUrl: Constants.of().endpoint,
      contentType: Constants.contentType,
      connectTimeout: Constants.connectionTimeOutMls,
      receiveTimeout: Constants.readTimeOutMls,
      sendTimeout: Constants.writeTimeOutMls,
    );

    this.options = options;

    // Config cache
    final cacheConfig = CacheConfig(baseUrl: Constants.of().endpoint);
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

  static DioBuilder getInstance() => DioBuilder._();
}
