import 'package:flutter/cupertino.dart';

abstract class UseCase<@required Params, T> {
  /// create observable
  Future<T> createObservable(Params params);

  /// dispose if use stream subscription on the use case
  /// needed call dispose on view model
  Future<void> dispose() => throw UnimplementedError();
}

abstract class Any {}