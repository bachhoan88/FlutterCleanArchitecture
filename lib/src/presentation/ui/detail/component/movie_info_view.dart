import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_clean_architecture/src/presentation/base/common_state_view.dart';
import 'package:flutter_clean_architecture/src/presentation/di/view_model_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/model/movie_info_view_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/model/movie_view_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/star_rating.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/stateful_wrapper.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/extension/build_context.dart';

class MovieInfoView extends HookWidget {
  final MovieViewDataModel movie;

  const MovieInfoView({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        context.read(detailViewModelProvider).getMovieInfo(movie.id);
      },
      child: CommonStateView<MovieInfoViewDataModel>(
        value: useProvider(
            detailViewModelProvider.select((value) => value.movieInfo)),
        errorRetry: () {
          context.read(detailViewModelProvider).getMovieInfo(movie.id);
        },
        child: (info) {
          return _createMovieBody(context, info);
        },
      ),
    );
  }

  Widget _createMovieBody(BuildContext context, MovieInfoViewDataModel info) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: Text(
            info.title ?? '',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: Text(
            info.categories,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
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
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(''),
              Column(
                children: [
                  Text(
                    context.res().year,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    info.year,
                    style: Theme.of(context).textTheme.bodyText2,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    context.res().country,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    info.countries,
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                          fontSize: 18.0,
                        ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    context.res().length,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    info.runtime.toString(),
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                          fontSize: 18.0,
                        ),
                  )
                ],
              ),
              const Text(''),
            ],
          ),
        ),
        _createMovieOverview(context, info.overview),
      ],
    );
  }

  Widget _createMovieOverview(BuildContext context, String overview) {
    return Consumer(builder: (context, watch, child) {
      var expanded = watch(detailViewModelProvider).expanded;
      return InkWell(
        onTap: context.read(detailViewModelProvider).toggleExpand,
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 24.0, right: 24.0, top: 8.0),
          child: Text(
            overview,
            textAlign: TextAlign.justify,
            maxLines: expanded ? 100 : 5,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
      );
    });
  }
}
