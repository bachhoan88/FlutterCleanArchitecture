import 'package:flutter_clean_architecture/src/domain/annotation/action.dart';

class Dialog {
  final String? title;
  final String message;
  final String? positive;
  final Action positiveAction;
  final dynamic positiveObject;
  final String? negative;
  final Action negativeAction;
  final dynamic negativeObject;

  Dialog({this.title, required this.message, required this.positive, required this.positiveAction, this.positiveObject, required this.negative, required this.negativeAction, this.negativeObject});
}