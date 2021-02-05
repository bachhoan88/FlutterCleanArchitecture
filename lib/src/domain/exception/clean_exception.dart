import 'package:river_movies/src/domain/annotation/exception_type.dart';

abstract class CleanException implements Exception {
  final int code;
  final String message;
  final ExceptionType exceptionType;

  const CleanException(this.code, this.message, this.exceptionType);
}