import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:river_movies/src/domain/usecase/movie/fetch_movies_usecase.dart';
import 'package:river_movies/src/presentation/base/async_value_view.dart';
import 'package:river_movies/src/presentation/model/movie_item.dart';
import 'package:river_movies/src/presentation/ui/home/component/category_view_holder.dart';

import '../home_view_model.dart';

class CategoryView extends HookWidget {
  final Function(MovieItem) actionOpenCategory;

  CategoryView({Key key, @required this.actionOpenCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AsyncValueView<List<MovieItem>>(
      value: useProvider(fetchMoviesProvider(MovieType.upcoming).state),
      errorRetry: () {
        context.refresh(fetchMoviesProvider(MovieType.upcoming));
      },
      child: (movies) {
        return _createCategoryList(context, movies);
      },
    );
  }

  Widget _createCategoryList(BuildContext context, List<MovieItem> movies) {
    return Container(
      width: double.infinity,
      height: 96.0,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return CategoryViewHolder(movies[index], actionOpenCategory);
        },
        itemCount: movies.length,
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => VerticalDivider(
          color: Colors.transparent,
          width: 6.0,
        ),
      ),
    );
  }
}
