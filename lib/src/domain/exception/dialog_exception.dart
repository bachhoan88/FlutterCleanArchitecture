import 'package:flutter_clean_architecture/src/domain/annotation/exception_type.dart';
import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';
import 'package:flutter_clean_architecture/src/domain/model/dialog.dart';

class DialogException extends BaseException {
  final Dialogs dialog;

  DialogException(int code, String message, {required this.dialog}) : super(code, message, ExceptionType.dialog);
}
