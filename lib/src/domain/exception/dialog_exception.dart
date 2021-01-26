import 'package:river_movies/src/domain/annotation/exception_type.dart';
import 'package:river_movies/src/domain/exception/clean_exception.dart';
import 'package:river_movies/src/domain/model/dialog.dart';

class DialogException extends CleanException {
  final Dialog dialog;

  DialogException(int code, String message, {this.dialog}) : super(code, message, ExceptionType.dialog);
}
