import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:river_movies/src/data/model/models.dart';
import 'package:flutter_gen/gen_l10n/res.dart';
import 'package:river_movies/src/di/provider/view_model_provider.dart';
import 'package:river_movies/src/ui/theme/color.dart';
import 'package:river_movies/src/ui/widget/container_with_loading.dart';
import 'package:river_movies/src/ui/widget/error_page.dart';
import '../../../extension/async_snapshot.dart';

class MyListView extends HookWidget {
  final Function(Movie) actionOpenMovie;
  final Function actionLoadAll;

  const MyListView({Key key, @required this.actionOpenMovie, @required this.actionLoadAll}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWithLoading(
      child: HookBuilder(
        builder: (context) {
          final viewModel = context.read(homeViewModelProvider);
          final movies = useProvider(homeViewModelProvider.select((value) => value.myListMovies));
          final snapshot = useFuture(
            useMemoized(() {
              return context.read(loadingStateProvider).whileLoading(viewModel.fetchMyList);
            }, [movies.toString()]),
          );

          if (!snapshot.isDone) {
            return Container();
          }

          return movies.when(success: (data) {
            return _createMyListView(context, data);
          }, failure: (e) {
            return ErrorPage(message: e.message ?? '', retry: () async => viewModel.fetchMyList);
          });
        },
      ),
    );
  }

  Widget _createMyListView(BuildContext context, List<Movie> movies) {
    final contentHeight = 4.0 * (MediaQuery.of(context).size.width / 2.4) / 3;
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 20.0, right: 16.0),
            height: 48.0,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    Resource.of(context).myList,
                    style: TextStyle(
                      color: groupTitleColor,
                      fontSize: 16.0,
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward, color: groupTitleColor),
                  onPressed: () {
                    return actionLoadAll;
                  },
                )
              ],
            ),
          ),
          Container(
            height: contentHeight,
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return _createMyListItem(context, movies[index]);
              },
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => VerticalDivider(
                color: Colors.transparent,
                width: 6.0,
              ),
              itemCount: movies.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget _createMyListItem(BuildContext context, Movie movie) {
    final width = MediaQuery.of(context).size.width / 2.6;
    return InkWell(
      onTap: () {
        actionOpenMovie(movie);
      },
      child: Container(
        width: width,
        height: double.infinity,
        padding: EdgeInsets.only(bottom: 20.0),
        child: Card(
          elevation: 10.0,
          borderOnForeground: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            width: width,
            height: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: CachedNetworkImage(
                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(),
                ),
                imageUrl: 'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                width: width,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
