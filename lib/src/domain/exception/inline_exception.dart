import 'package:river_movies/src/domain/annotation/exception_type.dart';
import 'package:river_movies/src/domain/exception/handling_exception.dart';

class InlineException extends HandlingException {
  final List tags;

  InlineException(int code, String message, {this.tags}) : super(code, message, ExceptionType.inline);
}