import 'package:river_movies/src/domain/annotation/exception_type.dart';
import 'package:river_movies/src/domain/exception/base_exception.dart';
import 'package:river_movies/src/domain/model/dialog.dart';

class DialogException extends BaseException {
  final Dialog dialog;

  DialogException(int code, String message, {this.dialog}) : super(code, message, ExceptionType.dialog);
}
