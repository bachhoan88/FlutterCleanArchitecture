
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_clean_architecture/src/constants.dart';
import 'package:flutter_clean_architecture/src/data/remote/interceptor/header_interceptor.dart';
import 'package:flutter_clean_architecture/src/data/remote/interceptor/token_interceptor.dart';

class DioBuilder extends DioMixin implements Dio {
  // create basic information for request
  final String contentType = 'application/json';
  final int connectionTimeOutMls = 30000;
  final int readTimeOutMls = 30000;
  final int writeTimeOutMls = 30000;

  static DioBuilder getInstance(
          {bool ignoredToken = false, BaseOptions? options}) =>
      DioBuilder._(ignoredToken, options);

  DioBuilder._(bool ignoredToken, [BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: options?.baseUrl ?? Constants.shared().endpoint,
      contentType: contentType,
      connectTimeout: connectionTimeOutMls,
      receiveTimeout: readTimeOutMls,
      sendTimeout: writeTimeOutMls,
    );

    this.options = options;

    // Config cache
    // final cacheConfig = CacheConfig(baseUrl: Constants.shared().endpoint);
    // interceptors.add(DioCacheManager(cacheConfig).interceptor as InterceptorsWrapper);

    // Debug mode
    if (kDebugMode) {
      interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    }

    // Add default user agent
    interceptors.add(HeaderInterceptor());

    // token
    if (!ignoredToken) {
      interceptors.add(TokenInterceptor(currentDio: this));
    }

    // create default http client
    // If you want run for web, please use httpClientAdapter from BrowserHttpClientAdapter
    // if (kIsWeb) {
    //   httpClientAdapter = BrowserHttpClientAdapter();
    // }
    httpClientAdapter = DefaultHttpClientAdapter();
  }
}
