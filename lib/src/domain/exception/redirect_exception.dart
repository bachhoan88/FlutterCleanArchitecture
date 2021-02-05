import 'package:river_movies/src/domain/annotation/exception_type.dart';
import 'package:river_movies/src/domain/annotation/redirect.dart';
import 'package:river_movies/src/domain/exception/clean_exception.dart';

class RedirectException extends CleanException {
  final Redirect redirect;

  RedirectException(int code, String message, {this.redirect}) : super(code, message, ExceptionType.redirect);
}