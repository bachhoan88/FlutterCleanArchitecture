import 'package:flutter/material.dart';

abstract class BaseViewHolder<T> extends StatelessWidget {
  final T _data;
  final Function(T) _actionOnItemClicked;
  Widget createContent(BuildContext context, T data);

  const BaseViewHolder(T data, Function(T) actionOnItemClicked, {Key? key})
      : _data = data,
        _actionOnItemClicked = actionOnItemClicked, super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _actionOnItemClicked(_data),
      child: createContent(context, _data),
    );
  }
}
