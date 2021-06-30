import 'dart:io';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/src/data/model/movie_db_error_data_model.dart';
import 'model/error_data_model.dart';

enum AppErrorType {
  network,
  badRequest,
  unauthorized,
  notFound,
  cancel,
  timeout,
  server,
  unknown,
}

class AppError implements Equatable {
  final String message;
  final AppErrorType type;

  final int? headerCode;
  final List<ErrorDataModel>? errors;

  AppError(this.type, this.message, {int? code, List<ErrorDataModel>? err})
      : headerCode = code,
        errors = err;

  factory AppError.from(Exception error) {
    var type = AppErrorType.unknown;
    var message = '';
    int? headerCode;
    List<ErrorDataModel>? errors;

    if (error is DioError) {
      message = error.message;
      headerCode = error.response?.statusCode ?? -1;

      switch (error.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.receiveTimeout:
          type = AppErrorType.timeout;
          break;
        case DioErrorType.sendTimeout:
          type = AppErrorType.network;
          break;
        case DioErrorType.response:
          switch (error.response?.statusCode) {
            case HttpStatus.unauthorized: // 401
              type = AppErrorType.unauthorized;
              break;
            case HttpStatus.badRequest: // 400
            case HttpStatus.notFound: // 404
            case HttpStatus.methodNotAllowed: // 405
            case HttpStatus.unprocessableEntity: // 422
            case HttpStatus.internalServerError: // 500
            case HttpStatus.badGateway: // 502
            case HttpStatus.serviceUnavailable: // 503
            case HttpStatus.gatewayTimeout: // 504
              type = AppErrorType.server;
              try {
                final movieDbError = MovieDbErrorDataModel.fromJson(error.response?.data);
                errors = [movieDbError.toErrorDataModel()];
              } on Exception catch (e) {
                errors = [ErrorDataModel(errorCode: -1, message: e.toString())];
              }
              break;
            default:
              type = AppErrorType.unknown;
              break;
          }
          break;
        case DioErrorType.cancel:
          type = AppErrorType.cancel;
          break;

        case DioErrorType.other:
        default:
          if (error.error is SocketException) {
            // SocketException: Failed host lookup: '***'
            // (OS Error: No address associated with hostname, errno = 7)
            type = AppErrorType.network;
          } else {
            type = AppErrorType.unknown;
          }
          break;
      }
    } else {
      type = AppErrorType.unknown;
      message = 'AppError: $error';
    }

    return AppError(type, message, code: headerCode, err: errors);
  }

  @override
  List<Object?> get props => [type, message, headerCode, errors];

  @override
  bool? get stringify => true;
}
