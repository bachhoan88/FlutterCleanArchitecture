import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_clean_architecture/src/domain/annotation/exception_type.dart';
import 'package:flutter_clean_architecture/src/domain/exception/alert_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/dialog_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/inline_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/redirect_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/snack_bar_exception.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/custom_dialog.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/error_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/loading.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/extension/build_context.dart';

class CommonStateView<T> extends HookWidget {
  final AsyncValue<T> _asyncValue;
  final Widget Function(T) _child;
  final Function? _errorRetry;
  final Function(dynamic, dynamic)? _positiveAction;
  final Function(dynamic, dynamic)? _negativeAction;
  final Function(dynamic)? _inlineAction;
  final Function(dynamic)? _redirectAction;

  const CommonStateView({
    Key? key,
    required AsyncValue<T> value,
    required Widget Function(T) child,
    Function? errorRetry,
    Function(dynamic, dynamic)? positiveAction,
    Function(dynamic, dynamic)? negativeAction,
    Function(dynamic)? inlineAction,
    Function(dynamic)? redirectAction,
  })  : _asyncValue = value,
        _child = child,
        _errorRetry = errorRetry,
        _positiveAction = positiveAction,
        _negativeAction = negativeAction,
        _inlineAction = inlineAction,
        _redirectAction = redirectAction,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return _asyncValue.when(
      data: _child,
      loading: () {
        return const Loading();
      },
      error: (error, stacktrace) {
        if (error is BaseException) {
          switch (error.exceptionType) {
            case ExceptionType.redirect:
              final exception = error as RedirectException;
              if (_redirectAction != null) {
                _redirectAction!(exception.redirect);
              }
              return const SizedBox();

            case ExceptionType.inline:
              final exception = error as InlineException;
              if (_inlineAction != null) {
                _inlineAction!(exception.tags);
              }
              return const SizedBox();

            case ExceptionType.snack:
              final exception = error as SnackBarException;
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(exception.message)));
              });

              return const SizedBox();

            case ExceptionType.toast:
              WidgetsBinding.instance.addPostFrameCallback((_) {});
              return const SizedBox();

            case ExceptionType.dialog:
              final exception = error as DialogException;
              WidgetsBinding.instance.addPostFrameCallback((_) {
                CustomDialog(
                  context: context,
                  title: exception.dialog.title ?? '',
                  message: exception.dialog.message,
                  positive: exception.dialog.positive ?? context.res().ok,
                  positiveCallback: () {
                    if (_positiveAction != null) {
                      _positiveAction!(exception.dialog.positiveAction, exception.dialog.positiveObject);
                    }
                    Navigator.pop(context);
                  },
                  negative: exception.dialog.negative ?? context.res().cancel,
                  negativeCallback: () {
                    if (_negativeAction != null) {
                      _negativeAction!(exception.dialog.negativeAction, exception.dialog.negativeObject);
                    }
                    Navigator.pop(context);
                  },
                ).show();
              });

              return const SizedBox();

            case ExceptionType.alert:
              final exception = error as AlertException;
              WidgetsBinding.instance.addPostFrameCallback((_) {
                CustomDialog(
                  context: context,
                  title: exception.title ?? '',
                  message: error.message,
                  positive: context.res().ok,
                  positiveCallback: () {
                    if (_positiveAction != null) {
                      _positiveAction!(null, null);
                    }
                    Navigator.pop(context);
                  },
                ).show();
              });

              return const SizedBox();

            case ExceptionType.onPage:
              return _showErrorInPage(context, error.message);
          }
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
          _errorRetry!();
        }
      },
    );
  }
}
