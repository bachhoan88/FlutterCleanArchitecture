import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:river_movies/src/presentation/ui/theme/color.dart';

class FavoriteIconWidget extends StatefulWidget {
  final void Function(bool isFavorite) onFavoriteChanged;
  final bool isFavorite;

  const FavoriteIconWidget({
    Key key,
    this.isFavorite,
    this.onFavoriteChanged,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIconWidget> {
  bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: actionBarIconColor,
      ),
      onPressed: () {
        toggleFavorite();
      },
    );
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      widget.onFavoriteChanged(isFavorite);
    });
  }

  @override
  void initState() {
    super.initState();
    isFavorite = widget.isFavorite;
  }
}
