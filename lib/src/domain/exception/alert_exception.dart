import 'package:river_movies/src/domain/annotation/exception_type.dart';
import 'package:river_movies/src/domain/exception/clean_exception.dart';

class AlertException extends CleanException {
  String title;
  AlertException(int code, String message, {this.title}) : super(code, message, ExceptionType.alert);
}