import 'package:flutter_clean_architecture/src/data/app_error.dart';
import 'package:flutter_clean_architecture/src/data/base/exception_mapper.dart';
import 'package:flutter_clean_architecture/src/data/model/models.dart';
import 'package:flutter_clean_architecture/src/domain/annotation/redirect.dart';
import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/inline_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/on_page_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/redirect_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/toast_exception.dart';
import 'package:flutter_clean_architecture/src/domain/mapper/resource_mapper.dart';
import 'package:flutter_clean_architecture/src/domain/model/tag.dart';

class ExceptionMapper extends BaseExceptionMapper<AppError, BaseException> {
  final String _languageCode;
  final ResourceMapper _resourceMapper = ResourceMapper();

  ExceptionMapper({required String languageCode}) : _languageCode = languageCode;

  @override
  Future<AppError> mapperFrom(BaseException exception) => throw UnimplementedError();

  @override
  Future<BaseException> mapperTo(AppError error) async {
    final resource = await _resourceMapper.mapperTo(_languageCode);
    switch (error.type) {
      case AppErrorType.network:
        return ToastException(-1, resource.errorInternetConnection);

      case AppErrorType.server:
        if (error.errors?.length == 1) {
          return await _mapperFromSingleError(error.errors!.first);
        } else if ((error.errors?.length ?? 0) > 1) {
          return await _mapperFromMultipleErrors(error.errors!);
        } else {
          return ToastException(-1, error.message);
        }

      case AppErrorType.unauthorized: // After refresh token but still un authorized
        return RedirectException(
          -1,
          error.message,
          redirect: Redirect.openLoginScreen,
          data: null,
        );

      case AppErrorType.unknown:
      case AppErrorType.cancel:
      case AppErrorType.timeout:
      default:
        return ToastException(-1, error.message);
    }
  }

  Future<BaseException> _mapperFromSingleError(ErrorDataModel errorDataModel) async {
    switch (errorDataModel.errorCode) {
      case 1000:
      default:
        return OnPageException(errorDataModel.errorCode!, errorDataModel.message!);
    }
  }

  // Multiple exception only with inline exception so need return only type inline
  Future<BaseException> _mapperFromMultipleErrors(List<ErrorDataModel> errors) async {
    final tagList = await _mapperFromErrors(errors);
    return InlineException(-1, 'multiple errors will appear to check multiple fields', tags: tagList);
  }

  Future<List<Tag>> _mapperFromErrors(List<ErrorDataModel> errors) async {
    final tags = <Tag>[];
    for (var error in errors) {
      tags.add(Tag(error.errorCode!.toString(), message: error.message));
    }

    return tags;
  }
}
