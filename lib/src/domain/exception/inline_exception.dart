import 'package:river_movies/src/domain/annotation/exception_type.dart';
import 'package:river_movies/src/domain/exception/base_exception.dart';

class InlineException extends BaseException {
  final List tags;

  InlineException(int code, String message, {this.tags}) : super(code, message, ExceptionType.inline);
}