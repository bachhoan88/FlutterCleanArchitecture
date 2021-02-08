import 'package:river_movies/src/domain/annotation/exception_type.dart';
import 'package:river_movies/src/domain/exception/handling_exception.dart';

class OnPageException extends HandlingException {
  OnPageException(int code, String message) : super(code, message, ExceptionType.onPage);

}