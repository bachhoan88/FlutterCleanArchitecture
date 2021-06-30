import 'package:flutter_clean_architecture/src/domain/annotation/exception_type.dart';
import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';

class AlertException extends BaseException {
  String? title;
  AlertException(int code, String message, {this.title}) : super(code, message, ExceptionType.alert);
}