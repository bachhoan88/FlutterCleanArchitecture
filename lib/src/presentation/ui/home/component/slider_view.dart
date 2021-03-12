import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:river_movies/src/domain/usecase/movie/fetch_movies_usecase.dart';
import 'package:river_movies/src/presentation/base/common_state_view.dart';
import 'package:river_movies/src/presentation/di/view_model_provider.dart';
import 'package:river_movies/src/presentation/model/movie_view_data_model.dart';
import 'package:river_movies/src/presentation/ui/home/component/slide_view_holder.dart';

class SliderView extends HookWidget {
  final Function(MovieViewDataModel) actionOpenMovie;

  SliderView({Key key, @required this.actionOpenMovie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonStateView<List<MovieViewDataModel>>(
      value: useProvider(homeViewModelProvider.select((value) => value.nowPlayingMovies)),
      errorRetry: () {
        context.read(homeViewModelProvider).getMovieWithType(MovieType.nowPlaying);
      },
      child: (movies) {
        return CarouselSlider.builder(
          itemCount: movies.length,
          itemBuilder: (BuildContext context, int index) {
            return SlideViewHolder(movies[index], actionOpenMovie);
          },
          options: CarouselOptions(
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            pauseAutoPlayOnTouch: true,
            viewportFraction: 0.8,
            enlargeCenterPage: true,
          ),
        );
      },
    );
  }
}
