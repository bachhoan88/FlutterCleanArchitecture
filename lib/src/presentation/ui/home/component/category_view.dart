import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:river_movies/src/domain/usecase/movie/fetch_movies_usecase.dart';
import 'package:river_movies/src/presentation/base/common_state_view.dart';
import 'package:river_movies/src/presentation/di/view_model_provider.dart';
import 'package:river_movies/src/presentation/model/movie_view_data_model.dart';
import 'package:river_movies/src/presentation/ui/home/component/category_view_holder.dart';

class CategoryView extends HookWidget {
  final Function(MovieViewDataModel) actionOpenCategory;

  CategoryView({Key key, @required this.actionOpenCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonStateView<List<MovieViewDataModel>>(
      value: useProvider(homeViewModelProvider.select((value) => value.categoryMovies)),
      errorRetry: () {
        context.read(homeViewModelProvider).getMovieWithType(MovieType.upcoming);
      },
      child: (movies) {
        return _createCategoryList(context, movies);
      },
    );
  }

  Widget _createCategoryList(BuildContext context, List<MovieViewDataModel> movies) {
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
