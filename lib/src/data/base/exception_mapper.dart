import 'package:flutter_clean_architecture/src/data/app_error.dart';
import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';

abstract class BaseExceptionMapper<T extends AppError, R extends BaseException> {
  Future<R> mapperTo(T error);

  Future<T> mapperFrom(R exception);
}