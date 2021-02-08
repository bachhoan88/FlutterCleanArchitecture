import 'package:river_movies/src/data/app_error.dart';
import 'package:river_movies/src/data/base/exception_mapper.dart';
import 'package:river_movies/src/domain/exception/handling_exception.dart';
import 'package:river_movies/src/domain/exception/on_page_exception.dart';

class ExceptionMapper extends BaseExceptionMapper<AppError, HandlingException> {
  @override
  AppError mapperFrom(R) => throw UnimplementedError();

  @override
  HandlingException mapperTo(AppError error) {
    return OnPageException(-1, error.message);
  }
}