import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';

class FavoriteIconWidget extends StatefulWidget {
  final void Function(bool isFavorite)? onFavoriteChanged;
  final bool? isFavorite;

  const FavoriteIconWidget({
    Key? key,
    this.isFavorite,
    this.onFavoriteChanged,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIconWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: ColorName.actionBarIconColor,
      ),
      onPressed: toggleFavorite,
    );
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      if (widget.onFavoriteChanged != null) {
        widget.onFavoriteChanged!(isFavorite);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    isFavorite = widget.isFavorite ?? false;
  }
}
