import 'package:river_movies/src/data/app_error.dart';
import 'package:river_movies/src/domain/exception/handling_exception.dart';

abstract class BaseExceptionMapper<T extends AppError, R extends HandlingException> {
  R mapperTo(T error);

  T mapperFrom(R cleanException);
}