import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String message;
  final Function () retry;

  ErrorPage({Key key, @required this.message, this.retry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            onPressed: retry,
            child: Text(
              'Retry',
            ),
          ),
        ],
      ),
    );
  }
}
