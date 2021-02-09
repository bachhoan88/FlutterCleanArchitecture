import 'package:river_movies/src/domain/annotation/exception_type.dart';
import 'package:river_movies/src/domain/exception/base_exception.dart';

class OnPageException extends BaseException {
  OnPageException(int code, String message) : super(code, message, ExceptionType.onPage);

}