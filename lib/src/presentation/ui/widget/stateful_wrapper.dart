import 'package:flutter/cupertino.dart';

class StatefulWrapper extends StatefulWidget {
  final Function onInit;
  final Widget child;

  const StatefulWrapper({
    Key? key,
    required this.onInit,
    required this.child,
  }) : super(key: key);

  @override
  _StatefulWrapperState createState() => _StatefulWrapperState();
}

class _StatefulWrapperState extends State<StatefulWrapper> {

  @override
  void initState() {
    widget.onInit;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
