import 'package:flutter_clean_architecture/src/domain/annotation/exception_type.dart';
import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';

class ToastException extends BaseException {
  ToastException(int code, String message) : super(code, message, ExceptionType.toast);
}