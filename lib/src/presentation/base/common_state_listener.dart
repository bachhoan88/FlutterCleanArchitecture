import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/domain/annotation/exception_type.dart';
import 'package:flutter_clean_architecture/src/domain/exception/alert_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/dialog_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/inline_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/redirect_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/snack_bar_exception.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/custom_dialog.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/custom_progress_dialog.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/extension/build_context.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CommonStateListener<T> {
  final AsyncValue<T> _asyncValue;
  final Function(dynamic, dynamic)? _positiveAction;
  final Function(dynamic, dynamic)? _negativeAction;
  final Function(dynamic)? _inlineAction;
  final Function(dynamic)? _redirectAction;
  final Function(dynamic)? _onPageError;
  final Function(dynamic)? _onSuccess;

  const CommonStateListener({
    required AsyncValue<T> value,
    Function(dynamic, dynamic)? positiveAction,
    Function(dynamic, dynamic)? negativeAction,
    Function(dynamic)? inlineAction,
    Function(dynamic)? redirectAction,
    Function(dynamic)? onPageError,
    Function(dynamic)? onSuccess,
  })  : _asyncValue = value,
        _positiveAction = positiveAction,
        _negativeAction = negativeAction,
        _inlineAction = inlineAction,
        _onSuccess = onSuccess,
        _onPageError = onPageError,
        _redirectAction = redirectAction;

  void observer(BuildContext context) {
    _asyncValue.when(
      data: (data) {
        // Dismiss progress dialog
        Navigator.of(context).pop();

        if (_onSuccess != null) {
          _onSuccess!(data);
        }
      },
      loading: () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          CustomProgressDialog(context).show();
        });
      },
      error: (error, stacktrace) {
        // Dismiss progress dialog
        Navigator.of(context).pop();

        if (error is BaseException) {
          switch (error.exceptionType) {
            case ExceptionType.redirect:
              final exception = error as RedirectException;
              if (_redirectAction != null) {
                _redirectAction!(exception.redirect);
              }
              break;

            case ExceptionType.inline:
              final exception = error as InlineException;
              if (_inlineAction != null) {
                _inlineAction!(exception.tags);
              }
              break;

            case ExceptionType.snack:
              final exception = error as SnackBarException;
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(exception.message)));
              });

              break;

            case ExceptionType.toast:
              WidgetsBinding.instance.addPostFrameCallback((_) {});
              break;

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

              break;

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
                    Navigator.of(context).pop();
                  },
                ).show();
              });

              break;

            case ExceptionType.onPage:
              if (_onPageError != null) {
                _onPageError!(error.message);
              }
              break;
          }
        }
      },
    );
  }
}
