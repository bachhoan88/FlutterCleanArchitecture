import 'package:river_movies/src/data/app_error.dart';
import 'package:river_movies/src/domain/exception/base_exception.dart';

abstract class BaseExceptionMapper<T extends AppError, R extends BaseException> {
  R mapperTo(T error);

  T mapperFrom(R cleanException);
}