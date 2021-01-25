import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:river_movies/src/data/model/models.dart';
import 'package:river_movies/src/di/provider/view_model_provider.dart';
import 'package:river_movies/src/ui/widget/container_with_loading.dart';
import 'package:river_movies/src/ui/widget/error_page.dart';
import 'package:river_movies/src/ui/widget/star_rating.dart';
import 'package:flutter_gen/gen_l10n/res.dart';
import '../../extension/async_snapshot.dart';

class MovieInfoView extends HookWidget {
  final Movie movie;

  const MovieInfoView({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWithLoading(
      child: HookBuilder(
        builder: (context) {
          final viewModel = context.read(detailViewModelProvider);
          final movieInfo = useProvider(detailViewModelProvider.select((value) => value.movieInfo));

          final snapshot = useFuture(
            useMemoized(() {
              return context.read(loadingStateProvider).whileLoading(() => viewModel.fetchMovieInfo(movie.id));
            }, [movieInfo.toString()]),
          );

          if (!snapshot.isDone) {
            return Container();
          }

          return movieInfo.when(success: (data) {
            return _createMovieBody(context, data);
          }, failure: (e) {
            return ErrorPage(message: e.message, retry: (movieId) => viewModel.fetchMovieInfo);
          });
        },
      ),
    );
  }

  Widget _createMovieBody(BuildContext context, MovieInfo info) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: Text(
            info.title ?? '',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.black87,
              fontFamily: 'Muli',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: Text(
            context.read(detailViewModelProvider).getCategories(info),
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.black45,
              fontFamily: 'Muli',
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: StarRating(
            size: 24.0,
            rating: info.voteAverage / 2,
            color: Colors.red,
            borderColor: Colors.black54,
            starCount: 5,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(''),
              Column(
                children: [
                  Text(
                    Resource.of(context).year,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black45,
                      fontFamily: 'Muli',
                    ),
                  ),
                  Text(
                    context.read(detailViewModelProvider).getYear(info),
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Muli',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    Resource.of(context).country,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black45,
                      fontFamily: 'Muli',
                    ),
                  ),
                  Text(
                    context.read(detailViewModelProvider).getCountry(info),
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Muli',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    Resource.of(context).length,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black45,
                      fontFamily: 'Muli',
                    ),
                  ),
                  Text(
                    info.runtime?.toString() ?? '',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Muli',
                    ),
                  )
                ],
              ),
              Text(''),
            ],
          ),
        ),
        _createMovieOverview(context, info.overview),
      ],
    );
  }

  Widget _createMovieOverview(BuildContext context, String overview) {
    return HookBuilder(builder: (context) {
      final viewModel = context.read(detailViewModelProvider);
      final expanded = useProvider(detailViewModelProvider.select((value) => value.expanded));
      return InkWell(
        onTap: viewModel.toggleExpand,
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 24.0, right: 24.0, top: 8.0),
          child: Text(
            overview,
            textAlign: TextAlign.justify,
            maxLines: expanded ? 100 : 5,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black45,
              fontFamily: 'Muli',
            ),
          ),
        ),
      );
    });
  }
}
