import 'package:river_movies/src/data/app_error.dart';
import 'package:river_movies/src/domain/exception/clean_exception.dart';

abstract class BaseExceptionMapper<T extends AppError, R extends CleanException> {
  R mapperTo(T error);

  T mapperFrom(R cleanException);
}