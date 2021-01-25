import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:river_movies/src/data/model/models.dart';
import 'package:river_movies/src/di/provider/view_model_provider.dart';
import 'package:river_movies/src/ui/theme/color.dart';
import 'package:river_movies/src/ui/widget/container_with_loading.dart';
import 'package:river_movies/src/ui/widget/error_page.dart';
import '../../extension/async_snapshot.dart';

class SliderView extends HookWidget {
  final Function(Movie) actionOpenMovie;

  SliderView({Key key, @required this.actionOpenMovie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWithLoading(
      child: HookBuilder(
        builder: (context) {
          final viewModel = context.read(homeViewModelProvider);
          final movies = useProvider(homeViewModelProvider.select((value) => value.sliderMovies));
          final snapshot = useFuture(
            useMemoized(() {
              return context.read(loadingStateProvider)
                  .whileLoading(viewModel.fetchSliderMovies);
            }, [movies.toString()]),
          );

          if (!snapshot.isDone) {
            return Container();
          }

          return movies.when(success: (movies) {
            return CarouselSlider.builder(
              itemCount: movies.length,
              itemBuilder: (BuildContext context, int index) {
                return _createSliderItem(context, movies[index]);
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
          }, failure: (e) {
            return ErrorPage(
              message: e.message,
              retry: () async => viewModel.fetchSliderMovies(),
            );
          });
        },
      ),
    );
  }

  Widget _createSliderItem(BuildContext context, Movie movie) {
    final width = MediaQuery.of(context).size.width;

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
                    padding: EdgeInsets.only(left: 16.0, bottom: 20.0),
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        stops: [0.1, 0.5, 0.7, 0.9],
                        colors: [
                          Color(0x00000000),
                          Color(0x00000000),
                          Color(0x22000000),
                          Color(0x66000000),
                        ],
                      ),
                    ),
                    child: Text(
                      movie.title?.toUpperCase() ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        fontFamily: 'Muli',
                        color: white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
