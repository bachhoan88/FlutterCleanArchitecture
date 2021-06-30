import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/movie/fetch_movies_usecase.dart';
import 'package:flutter_clean_architecture/src/presentation/base/common_state_view.dart';
import 'package:flutter_clean_architecture/src/presentation/di/view_model_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/model/movie_view_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/home/component/slide_view_holder.dart';

class SliderView extends HookWidget {
  final Function(MovieViewDataModel) actionOpenMovie;

  const SliderView({
    Key? key,
    required this.actionOpenMovie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonStateView<List<MovieViewDataModel>>(
      value: useProvider(
        homeViewModelProvider.select((value) => value.nowPlayingMovies),
      ),
      errorRetry: () {
        context
            .read(homeViewModelProvider)
            .getMovieWithType(MovieType.nowPlaying, retry: true);
      },
      child: (movies) {
        return CarouselSlider.builder(
          itemCount: movies.length,
          itemBuilder: (BuildContext context, int index, realIndex) {
            return SlideViewHolder(item: movies[index], actionOnItemClicked: actionOpenMovie);
          },
          options: CarouselOptions(
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            pauseAutoPlayOnTouch: true,
            viewportFraction: 0.8,
            enlargeCenterPage: true,
          ),
        );
      },
    );
  }
}
