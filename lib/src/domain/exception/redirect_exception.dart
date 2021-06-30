import 'package:flutter_clean_architecture/src/domain/annotation/exception_type.dart';
import 'package:flutter_clean_architecture/src/domain/annotation/redirect.dart';
import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';

class RedirectException extends BaseException {
  final Redirect redirect;

  RedirectException(int code, String message, {required this.redirect}) : super(code, message, ExceptionType.redirect);
}