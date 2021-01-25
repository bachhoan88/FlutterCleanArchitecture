import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:river_movies/src/data/app_error.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result {
  const Result._();

  const factory Result.success({T data}) = Success<T>;

  const factory Result.failure({@required AppError error}) = Failure<T>;

  bool get isSuccess => when(success: (data) => true, failure: (e) => false);

  bool get isFailure => !isSuccess;

  T get dataOrThrow {
    return when(
      success: (data) => data as T,
      failure: (e) => throw e,
    );
  }

  static Result<T> guard<T>(T Function() body) {
    try {
      return Result.success(data: body());
    } on Exception catch(e) {
      return Result.failure(error: AppError(e));
    }
  }

  static Future<Result<T>> guardFuture<T>(Future<T> Function() body) async {
    try {
      return Result.success(data: await body());
    } on Exception catch(e) {
      return Result.failure(error: AppError(e));
    }
  }

  void ifSuccess(Function(T data) body) {
    maybeWhen(orElse: () {}, success: (data) => body(data));
  }

  void ifFailure(Function(AppError e) body) {
    maybeWhen(orElse: () {}, failure: (e) => body(e));
  }
}

extension ResultObjectExt<T> on T {
  Result<T> get asSuccess => Result.success(data: this);

  Result<T> asFailure(Exception e) => Result.failure(error: AppError(e));
}