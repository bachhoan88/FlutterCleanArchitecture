import 'package:river_movies/src/domain/annotation/exception_type.dart';
import 'package:river_movies/src/domain/exception/clean_exception.dart';

class ToastException extends CleanException {
  ToastException(int code, String message) : super(code, message, ExceptionType.toast);
}