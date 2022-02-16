import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/domain/annotation/redirect.dart';
import 'package:flutter_clean_architecture/src/domain/model/action.dart';
import 'package:flutter_clean_architecture/src/domain/model/dialog.dart';
import 'package:flutter_clean_architecture/src/domain/model/tag.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/model/pair.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/extension/build_context.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/custom_dialog.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/custom_progress_dialog.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/error_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class BaseStatelessView<V extends BaseViewModel> extends StatelessWidget {
  const BaseStatelessView({Key? key}) : super(key: key);

  Widget createView(BuildContext context);

  abstract final ProviderBase<V> viewModelProvider;

  bool get useRootNavigator => true;

  bool get checkIsLoading => false;

  int get timeoutSecond => 2;

  void positiveAction(GlobalAction? action, dynamic data) {}

  void negativeAction(GlobalAction? action, dynamic data) {}

  void redirectAction(BuildContext context, Redirect redirect, dynamic data) {}

  void inlineTagsAction(WidgetRef ref, List<Tag> tags) {}

  void pageErrorRetry(BuildContext context, WidgetRef ref) {}

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        createView(context),
        _createErrorView(context),
        _createLoading(context),
      ],
    );
  }

  Widget _createLoading(BuildContext context) {
    if (checkIsLoading) {
      var showing = false;
      return Consumer(builder: (context, ref, _) {
        final isLoading = ref.watch(viewModelProvider)..loading.observer();
        if (isLoading == true) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!showing) {
              CustomProgressDialog(context).show(rootNavigator: useRootNavigator);
              showing = true;
            }
          });
        } else if (isLoading == false && showing) {
          Navigator.of(context, rootNavigator: useRootNavigator).pop();
          showing = false;
        }
        return const SizedBox();
      });
    }
    return const SizedBox();
  }

  Widget _createErrorView(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        // Check on page error
        final pageError = ref.watch(viewModelProvider).pageMessage.observer();
        if (pageError != null) {
          return ErrorPage(
            message: pageError,
            retry: () {
              pageErrorRetry(context, ref);
            },
          );
        }

        // check toast error
        final toastError = ref.watch(viewModelProvider).toastMessage.observer();
        if (toastError != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Fluttertoast.showToast(msg: toastError);
          });

          return const SizedBox();
        }

        // check alert error
        final alertError = ref.watch(viewModelProvider).alertException.observer();
        if (alertError != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _showAlert(context, alertError);
          });
          return const SizedBox();
        }

        // Check dialog error
        final dialogError = ref.watch(viewModelProvider).dialogException.observer();
        if (dialogError != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _showDialog(context, dialogError);
          });
          return const SizedBox();
        }

        // check redirect
        final redirectError = ref.watch(viewModelProvider).redirect.observer();
        if (redirectError != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            redirectAction(context, redirectError.first, redirectError.second);
          });
          return const SizedBox();
        }

        // check snack bar
        final snackBarError = ref.watch(viewModelProvider).snackBarMessage.observer();
        if (snackBarError != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _showSnackBar(context, snackBarError);
          });
          
          return const SizedBox();
        }
        
        // check inline 
        final inlineError = ref.watch(viewModelProvider).inlineTags.observer();
        if (inlineError != null) {
          inlineTagsAction(ref, inlineError);
          return const SizedBox();
        }

        return const SizedBox();
      },
    );
  }

  void _showAlert(BuildContext context, Pair alertError) async {
    await CustomDialog(
      context: context,
      title: alertError.first,
      message: alertError.second,
      positive: context.res().ok,
      positiveCallback: () {
        Navigator.of(context, rootNavigator: useRootNavigator).pop();
      },
    ).show(rootNavigator: useRootNavigator);
  }

  void _showDialog(BuildContext context, Dialogs dialogs) async {
    await CustomDialog(
      context: context,
      title: dialogs.title,
      message: dialogs.message,
      positive: dialogs.positive,
      negative: dialogs.negative,
      positiveCallback: () {
        positiveAction(dialogs.positiveAction, dialogs.positiveObject);
        Navigator.of(context, rootNavigator: useRootNavigator).pop();
      },
      negativeCallback: () {
        negativeAction(dialogs.negativeAction, dialogs.negativeObject);
        Navigator.of(context, rootNavigator: useRootNavigator).pop();
      },
    ).show(rootNavigator: useRootNavigator);
  }

  void _showSnackBar(BuildContext context, String message) async {
    final snackBar = SnackBar(
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
