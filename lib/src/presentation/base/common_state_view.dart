import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/res.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:river_movies/src/domain/annotation/exception_type.dart';
import 'package:river_movies/src/domain/exception/alert_exception.dart';
import 'package:river_movies/src/domain/exception/base_exception.dart';
import 'package:river_movies/src/domain/exception/dialog_exception.dart';
import 'package:river_movies/src/domain/exception/inline_exception.dart';
import 'package:river_movies/src/domain/exception/redirect_exception.dart';
import 'package:river_movies/src/domain/exception/snack_bar_exception.dart';
import 'package:river_movies/src/presentation/ui/widget/custom_dialog.dart';
import 'package:river_movies/src/presentation/ui/widget/error_page.dart';
import 'package:river_movies/src/presentation/ui/widget/loading.dart';

class CommonStateView<T> extends HookWidget {
  final AsyncValue<T> _asyncValue;
  final Widget Function(T) _child;
  final Function _errorRetry;
  final Function(dynamic, dynamic) _positiveAction;
  final Function(dynamic, dynamic) _negativeAction;
  final Function(dynamic) _inlineAction;
  final Function(dynamic) _redirectAction;

  const CommonStateView({
    @required AsyncValue<T> value,
    @required Widget Function(T) child,
    Function errorRetry,
    Function(dynamic, dynamic) positiveAction,
    Function(dynamic, dynamic) negativeAction,
    Function(dynamic) inlineAction,
    Function(dynamic) redirectAction,
  })  : _asyncValue = value,
        _child = child,
        _errorRetry = errorRetry,
        _positiveAction = positiveAction,
        _negativeAction = negativeAction,
        _inlineAction = inlineAction,
        _redirectAction = redirectAction;

  @override
  Widget build(BuildContext context) {
    return _asyncValue.when(
      data: _child,
      loading: () {
        return Loading();
      },
      error: (error, stacktrace) {
        if (error is BaseException) {
          switch (error.exceptionType) {
            case ExceptionType.redirect:
              final exception = error as RedirectException;
              if (_redirectAction != null) {
                _redirectAction(exception.redirect);
              }
              return SizedBox();

            case ExceptionType.inline:
              final exception = error as InlineException;
              if (_inlineAction != null) {
                _inlineAction(exception.tags);
              }
              return SizedBox();

            case ExceptionType.snack:
              final exception = error as SnackBarException;
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(exception.message)));
              });

              return SizedBox();

            case ExceptionType.toast:
              WidgetsBinding.instance.addPostFrameCallback((_) {

              });
              return SizedBox();

            case ExceptionType.dialog:
              final exception = error as DialogException;
              WidgetsBinding.instance.addPostFrameCallback((_) {
                CustomDialog(
                  context: context,
                  title: exception.dialog.title ?? '',
                  message: exception.dialog.message,
                  positive: exception.dialog.positive ?? Resource.of(context).ok,
                  positiveCallback: () {
                    if (_positiveAction != null) {
                      _positiveAction(exception.dialog.positiveAction, exception.dialog.positiveObject);
                    }
                    Get.back();
                  },
                  negative: exception.dialog.negative ?? Resource.of(context).cancel,
                  negativeCallback: () {
                    if (_negativeAction != null) {
                      _negativeAction(exception.dialog.negativeAction, exception.dialog.negativeObject);
                    }
                    Get.back();
                  },
                ).show();
              });

              return SizedBox();

            case ExceptionType.alert:
              final exception = error as AlertException;
              WidgetsBinding.instance.addPostFrameCallback((_) {
                CustomDialog(
                  context: context,
                  title: exception.title ?? '',
                  message: error.message,
                  positive: Resource.of(context).ok,
                  positiveCallback: () {
                    if (_positiveAction != null) {
                      _positiveAction(null, null);
                    }
                    Get.back();
                  },
                ).show();
              });

              return SizedBox();

            case ExceptionType.onPage:
              return _showErrorInPage(context, error.message);
          }

          return _showErrorInPage(context, 'error');
        } else {
          return _showErrorInPage(context, error.toString());
        }
      },
    );
  }

  Widget _showErrorInPage(BuildContext context, String message) {
    return ErrorPage(
      message: message,
      retry: () {
        if (_errorRetry != null) {
          _errorRetry();
        }
      },
    );
  }
}
