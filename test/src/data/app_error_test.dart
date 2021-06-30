import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_clean_architecture/src/data/app_error.dart';

void main() {
  final options = RequestOptions(path: '/');
  final responseError = <String, dynamic>{
    "status_code": 34,
    "status_message": "The resource you requested could not be found.",
    "success": false
  };

  test('AppError Test', () async {
    expect(
      AppError.from(
        DioError(type: DioErrorType.connectTimeout, requestOptions: options),
      ).type,
      equals(AppErrorType.timeout),
    );

    expect(
      AppError.from(
        DioError(type: DioErrorType.receiveTimeout, requestOptions: options),
      ).type,
      equals(AppErrorType.timeout),
    );

    expect(
      AppError.from(
        DioError(type: DioErrorType.sendTimeout, requestOptions: options),
      ).type,
      equals(AppErrorType.network),
    );

    expect(
      AppError.from(
        DioError(type: DioErrorType.response,
            response: Response(data: responseError, statusCode: 400, requestOptions: options),
            requestOptions: RequestOptions(path: '/')),
      ).type,
      equals(AppErrorType.server),
    );

    expect(
      AppError.from(
        DioError(type: DioErrorType.response,
            response: Response(data: responseError, statusCode: 401, requestOptions: options),
            requestOptions: RequestOptions(path: '/')),
      ).type,
      equals(AppErrorType.unauthorized),
    );

    expect(
      AppError.from(
        DioError(type: DioErrorType.response,
            response: Response(data: responseError, statusCode: 500, requestOptions: options),
            requestOptions: RequestOptions(path: '/')),
      ).type,
      equals(AppErrorType.server),
    );

    expect(
      AppError.from(
        DioError(type: DioErrorType.cancel,
            response: Response(statusCode: 500, requestOptions: options),
            requestOptions: RequestOptions(path: '/')),
      ).type,
      equals(AppErrorType.cancel),
    );

    expect(
      AppError.from(
        DioError(type: DioErrorType.other,
            response: Response(statusCode: 500, requestOptions: options),
            error: const SocketException('Failed host lookup: wasabeef.jp'),
            requestOptions: RequestOptions(path: '/')),
      ).type,
      equals(AppErrorType.network),
    );

    expect(
      AppError.from(
        DioError(type: DioErrorType.other,
            requestOptions: RequestOptions(path: '/')),
      ).type,
      equals(AppErrorType.unknown),
    );

    expect(AppError.from(const FileSystemException()).type, equals(AppErrorType.unknown));
  });
}
