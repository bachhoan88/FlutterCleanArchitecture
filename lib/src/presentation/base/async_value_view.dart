import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:river_movies/src/domain/annotation/exception_type.dart';
import 'package:river_movies/src/domain/exception/alert_exception.dart';
import 'package:river_movies/src/domain/exception/clean_exception.dart';
import 'package:river_movies/src/domain/exception/dialog_exception.dart';
import 'package:river_movies/src/domain/exception/inline_exception.dart';
import 'package:river_movies/src/domain/exception/redirect_exception.dart';
import 'package:river_movies/src/domain/exception/snack_bar_exception.dart';
import 'package:river_movies/src/presentation/ui/widget/custom_dialog.dart';
import 'package:river_movies/src/presentation/ui/widget/error_page.dart';
import 'package:river_movies/src/presentation/ui/widget/loading.dart';
import 'package:flutter_gen/gen_l10n/res.dart';

class AsyncValueView<T> extends HookWidget {
  final AsyncValue<T> _asyncValue;
  final Widget Function(T) _child;
  final Function _errorRetry;
  final Function(dynamic, dynamic) _positiveAction;
  final Function(dynamic, dynamic) _negativeAction;
  final Function(dynamic) _inlineAction;
  final Function(dynamic) _redirectAction;

  const AsyncValueView({
    AsyncValue<T> value,
    Widget Function(T) child,
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
        if (error is CleanException) {
          switch (error.exceptionType) {
            case ExceptionType.redirect:
              final exception = error as RedirectException;
              _redirectAction(exception.redirect);
              return SizedBox();

            case ExceptionType.inline:
              final exception = error as InlineException;
              _inlineAction(exception.tags);
              return SizedBox();

            case ExceptionType.snack:
              final exception = error as SnackBarException;
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(exception.message)));
              return SizedBox();

            case ExceptionType.toast:
              return SizedBox();

            case ExceptionType.dialog:
              final exception = error as DialogException;
              CustomDialog(
                context: context,
                title: exception.dialog.title ?? '',
                message: exception.dialog.message,
                positive: exception.dialog.positive ?? Resource.of(context).ok,
                positiveCallback: () {
                  _positiveAction(exception.dialog.positiveAction, exception.dialog.positiveObject);
                },
                negative: exception.dialog.negative ?? Resource.of(context).cancel,
                negativeCallback: () {
                  _negativeAction(exception.dialog.negativeAction, exception.dialog.negativeObject);
                }
              ).show();
              return SizedBox();

            case ExceptionType.alert:
              final exception = error as AlertException;
              CustomDialog(
                context: context,
                title: exception.title ?? '',
                message: error.message,
                positive: Resource.of(context).ok,
                positiveCallback: () {
                  _positiveAction(null, null);
                },
              ).show();
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
