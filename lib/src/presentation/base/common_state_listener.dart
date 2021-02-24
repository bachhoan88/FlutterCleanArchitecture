import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/res.dart';
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
import 'package:river_movies/src/presentation/ui/widget/custom_progress_dialog.dart';

class CommonStateListener<T> {
  final AsyncValue<T> _asyncValue;
  final Function(dynamic, dynamic) _positiveAction;
  final Function(dynamic, dynamic) _negativeAction;
  final Function(dynamic) _inlineAction;
  final Function(dynamic) _redirectAction;
  final Function(dynamic) _onPageError;
  final Function(dynamic) _onSuccess;

  CommonStateListener(
      {@required AsyncValue<T> value,
        Function(dynamic, dynamic) positiveAction,
        Function(dynamic, dynamic) negativeAction,
        Function(dynamic) inlineAction,
        Function(dynamic) redirectAction,
        Function(dynamic) onPageError,
        Function(dynamic) onSuccess})
      : _asyncValue = value,
        _positiveAction = positiveAction,
        _negativeAction = negativeAction,
        _inlineAction = inlineAction,
        _onSuccess = onSuccess,
        _onPageError = onPageError,
        _redirectAction = redirectAction;

  void observer(BuildContext context) {

    _asyncValue?.when(
      data: (data) {
        // Dismiss progress dialog
        Navigator.of(context).pop();

        if (_onSuccess != null) {
          _onSuccess(data);
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
                _redirectAction(exception.redirect);
              }
              break;

            case ExceptionType.inline:
              final exception = error as InlineException;
              if (_inlineAction != null) {
                _inlineAction(exception.tags);
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

              break;

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
                    Navigator.of(context).pop();
                  },
                ).show();
              });

              break;

            case ExceptionType.onPage:
              if (_onPageError != null) {
                _onPageError(error.message);
              }
              break;
          }
        }
      },
    );
  }
}
