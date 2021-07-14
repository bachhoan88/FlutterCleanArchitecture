import 'package:flutter_clean_architecture/src/domain/model/action.dart';

class Dialogs {
  final String? title;
  final String message;
  final String? positive;
  final GlobalAction positiveAction;
  final dynamic positiveObject;
  final String? negative;
  final GlobalAction negativeAction;
  final dynamic negativeObject;

  Dialogs({this.title, required this.message, required this.positive, required this.positiveAction, this
      .positiveObject, required this.negative, required this.negativeAction, this.negativeObject});
}