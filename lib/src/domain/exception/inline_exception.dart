import 'package:flutter_clean_architecture/src/domain/annotation/exception_type.dart';
import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';

class InlineException extends BaseException {
  final List tags;

  InlineException(int code, String message, {required this.tags}) : super(code, message, ExceptionType.inline);
}