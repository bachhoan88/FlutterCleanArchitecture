import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/domain/annotation/exception_type.dart';
import 'package:flutter_clean_architecture/src/domain/annotation/redirect.dart';
import 'package:flutter_clean_architecture/src/domain/exception/alert_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/base_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/dialog_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/inline_exception.dart';
import 'package:flutter_clean_architecture/src/domain/exception/redirect_exception.dart';
import 'package:flutter_clean_architecture/src/domain/model/dialog.dart';
import 'package:flutter_clean_architecture/src/domain/model/tag.dart';
import 'package:flutter_clean_architecture/src/presentation/base/view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/model/pair.dart';
import 'package:flutter_clean_architecture/src/presentation/model/single_observer.dart';

abstract class BaseViewModel extends ChangeNotifier implements ViewModel {
  final SingleObserver<String> _snackBarMessage = SingleObserver();

  SingleObserver<String> get snackBarMessage => _snackBarMessage;

  final SingleObserver<String> _toastMessage = SingleObserver();

  SingleObserver<String> get toastMessage => _toastMessage;

  final SingleObserver<Dialogs> _dialogException = SingleObserver();

  SingleObserver<Dialogs> get dialogException => _dialogException;

  final SingleObserver<Pair> _alertException = SingleObserver();

  SingleObserver<Pair> get alertException => _alertException;

  final SingleObserver<String> _pageMessage = SingleObserver();

  SingleObserver<String> get pageMessage => _pageMessage;

  final SingleObserver<Pair<Redirect, dynamic>> _redirect = SingleObserver();

  SingleObserver<Pair<Redirect, dynamic>> get redirect => _redirect;

  final SingleObserver<List<Tag>> _inlineTags = SingleObserver();

  SingleObserver<List<Tag>> get inlineTags => _inlineTags;

  final SingleObserver<bool> _loading = SingleObserver(data: false);

  SingleObserver<bool> get loading => _loading;

  void setLoading(bool loading, {bool refresh = false}) {
    _loading.changeValue(loading);
    if (refresh) {
      notifyListeners();
    }
  }

  void setThrowable(dynamic throwable) {
    if (throwable is BaseException) {
      switch (throwable.exceptionType) {
        case ExceptionType.snack:
          _snackBarMessage.changeValue(throwable.message);
          break;

        case ExceptionType.toast:
          _toastMessage.changeValue(throwable.message);
          break;

        case ExceptionType.dialog:
          _dialogException.changeValue((throwable as DialogException).dialog);
          break;

        case ExceptionType.alert:
          final e = throwable as AlertException;
          _alertException.changeValue(Pair<String?, String>(e.title, e.message));
          break;

        case ExceptionType.redirect:
          final e = throwable as RedirectException;
          _redirect.changeValue(Pair(e.redirect, e.data));
          break;

        case ExceptionType.inline:
          _inlineTags.changeValue((throwable as InlineException).tags);
          break;

        case ExceptionType.onPage:
          _pageMessage.changeValue(throwable.message);
          break;
      }
    } else {
      _pageMessage.changeValue(throwable.toString());
    }
  }
}
