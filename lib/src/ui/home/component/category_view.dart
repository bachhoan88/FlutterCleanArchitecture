import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:river_movies/src/data/model/models.dart';
import 'package:river_movies/src/di/provider/view_model_provider.dart';
import 'package:river_movies/src/ui/theme/color.dart';
import 'package:river_movies/src/ui/widget/container_with_loading.dart';
import 'package:river_movies/src/ui/widget/error_page.dart';

import '../../../extension/async_snapshot.dart';

class CategoryView extends HookWidget {
  final Function(Movie) actionOpenCategory;

  CategoryView({Key key, @required this.actionOpenCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWithLoading(
      child: HookBuilder(
        builder: (context) {
          final viewModel = context.read(homeViewModelProvider);
          final movies = useProvider(homeViewModelProvider.select((value) => value.sliderMovies));
          final snapshot = useFuture(
            useMemoized(() {
              return context.read(loadingStateProvider).whileLoading(viewModel.fetchCategories);
            }, [movies.toString()]),
          );

          if (!snapshot.isDone) {
            return Container();
          }

          return movies.when(success: (data) {
            return _createCategoryList(context, data);
          }, failure: (e) {
            return ErrorPage(message: e.message, retry: () async => viewModel.fetchSliderMovies);
          });
        },
      ),
    );
  }

  Widget _createCategoryList(BuildContext context, List<Movie> movies) {
    return Container(
      width: double.infinity,
      height: 96.0,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return _createCategoryItem(context, movies[index]);
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

  Widget _createCategoryItem(BuildContext context, Movie movie) {
    final width = MediaQuery.of(context).size.width / 2.5;

    return InkWell(
      onTap: () {
        actionOpenCategory(movie);
      },
      child: Container(
        width: width,
        height: double.infinity,
        padding: EdgeInsets.only(bottom: 12.0),
        child: Card(
          elevation: 8.0,
          borderOnForeground: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            width: width,
            height: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Stack(
                children: [
                  CachedNetworkImage(
                    placeholder: (context, url) => Center(
                      child: CircularProgressIndicator(),
                    ),
                    imageUrl: 'https://image.tmdb.org/t/p/w500${movie.backdropPath}',
                    width: width,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: width,
                    height: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        stops: [0.1, 0.5, 0.7, 0.9],
                        colors: [
                          Color(0x99ff0000),
                          Color(0x66ff0000),
                          Color(0x66ff0000),
                          Color(0x99ff0000),
                        ],
                      ),
                    ),
                    child: Text(
                      movie.releaseDate ?? '',
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        fontFamily: 'Muli',
                        color: white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
