import 'package:river_movies/src/domain/annotation/exception_type.dart';
import 'package:river_movies/src/domain/exception/clean_exception.dart';

class InlineException extends CleanException {
  final List tags;

  InlineException(int code, String message, {this.tags}) : super(code, message, ExceptionType.inline);
}