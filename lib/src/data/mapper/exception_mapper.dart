import 'package:river_movies/src/data/app_error.dart';
import 'package:river_movies/src/data/base/exception_mapper.dart';
import 'package:river_movies/src/domain/exception/base_exception.dart';
import 'package:river_movies/src/domain/exception/on_page_exception.dart';

class ExceptionMapper extends BaseExceptionMapper<AppError, BaseException> {
  @override
  AppError mapperFrom(R) => throw UnimplementedError();

  @override
  BaseException mapperTo(AppError error) {
    return OnPageException(-1, error.message);
  }
}