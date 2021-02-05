import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class BaseViewHolder<T> extends StatelessWidget {
  final T _data;
  final Function(T) _actionOnItemClicked;
  Widget createContent(BuildContext context, T data);

  BaseViewHolder(T data, Function(T) actionOnItemClicked)
      : _data = data,
        _actionOnItemClicked = actionOnItemClicked;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _actionOnItemClicked(_data),
      child: createContent(context, _data),
    );
  }
}
