import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/movie/fetch_movies_usecase.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_stateless_view.dart';
import 'package:flutter_clean_architecture/src/presentation/di/view_model_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/model/movie_view_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/home/component/slide_view_holder.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/home/home_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/loading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SliderView extends BaseStatelessView<HomeViewModel> {
  final Function(MovieViewDataModel) actionOpenMovie;

  const SliderView({
    Key? key,
    required this.actionOpenMovie,
  }) : super(key: key);

  @override
  Widget createView(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final movies = ref.watch(homeViewModelProvider.select((value) => value.nowPlayingMovies));
      return movies.when(data: (data) {
        return CarouselSlider.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index, realIndex) {
            return SlideViewHolder(item: data[index], actionOnItemClicked: actionOpenMovie);
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
      }, loading: () {
        return const Loading();
      }, error: (e, s) {
        return const SizedBox();
      });
    });
  }


  @override
  bool get checkIsLoading => true;


  @override
  int get timeoutSecond => 20;

  @override
  void pageErrorRetry(BuildContext context, WidgetRef ref) {
    ref.watch(homeViewModelProvider.notifier).getMovieWithType(MovieType.nowPlaying, retry: true);
  }

  @override
  ProviderBase<HomeViewModel> get viewModelProvider => homeViewModelProvider;
}
