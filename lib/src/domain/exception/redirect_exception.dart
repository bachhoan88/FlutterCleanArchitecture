import 'package:flutter_clean_architecture/src/domain/annotation/exception_type.dart';
import 'package:flutter_clean_architecture/src/domain/annotation/redirect.dart';
import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';

class RedirectException extends BaseException {
  final Redirect redirect;
  final dynamic data;

  RedirectException(
    int code,
    String message, {
    required this.redirect,
    required this.data,
  }) : super(code, message, ExceptionType.redirect);
}