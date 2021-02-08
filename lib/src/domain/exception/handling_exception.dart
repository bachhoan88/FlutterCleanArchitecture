import 'package:river_movies/src/domain/annotation/exception_type.dart';

abstract class HandlingException implements Exception {
  final int code;
  final String message;
  final ExceptionType exceptionType;

  const HandlingException(this.code, this.message, this.exceptionType);
}