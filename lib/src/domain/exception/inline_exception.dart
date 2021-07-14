import 'package:flutter_clean_architecture/src/domain/annotation/exception_type.dart';
import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';
import 'package:flutter_clean_architecture/src/domain/model/tag.dart';

class InlineException extends BaseException {
  final List<Tag> tags;

  InlineException(int code, String message, {required this.tags}) : super(code, message, ExceptionType.inline);
}