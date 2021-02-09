import 'package:river_movies/src/domain/annotation/exception_type.dart';
import 'package:river_movies/src/domain/exception/base_exception.dart';

class ToastException extends BaseException {
  ToastException(int code, String message) : super(code, message, ExceptionType.toast);
}