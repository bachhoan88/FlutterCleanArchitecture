import 'package:river_movies/src/domain/annotation/action.dart';

class Dialog {
  final String title;
  final String message;
  final String positive;
  final Action positiveAction;
  final dynamic positiveObject;
  final String negative;
  final Action negativeAction;
  final dynamic negativeObject;

  Dialog({this.title, this.message, this.positive, this.positiveAction, this.positiveObject, this.negative, this.negativeAction, this.negativeObject});
}