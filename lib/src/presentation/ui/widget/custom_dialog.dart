import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/extension/build_context.dart';

class CustomDialog {
  final BuildContext context;
  final String? title;
  final String message;
  String? positive;
  String? negative;
  GestureTapCallback? positiveCallback;
  GestureTapCallback? negativeCallback;

  late AlertDialog _alertDialog;

  CustomDialog({
    required this.context,
    this.title,
    required this.message,
    this.positive,
    this.positiveCallback,
    this.negative,
    this.negativeCallback,
  }) {
    var buttons = [
      TextButton(
        onPressed: positiveCallback,
        child: Text(positive ?? context.res().ok),
      )
    ];

    if (negative != null) {
      buttons.add(TextButton(
        onPressed: negativeCallback,
        child: Text(negative!),
      ));
    }

    _alertDialog = AlertDialog(
      title: title != null ? Text(title!) : null,
      content: Text(message),
      actions: buttons,
    );
  }

  Future<void> show({bool rootNavigator = true}) async {
    return showDialog<void>(
      context: context,
      useRootNavigator: rootNavigator,
      barrierDismissible: false, // user must tap button!
      builder: (context) {
        return _alertDialog;
      },
    );
  }
}
