import 'package:river_movies/src/domain/annotation/exception_type.dart';
import 'package:river_movies/src/domain/exception/handling_exception.dart';

class SnackBarException extends HandlingException {
  SnackBarException(int code, String message) : super(code, message, ExceptionType.snack);
}