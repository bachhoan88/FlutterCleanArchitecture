import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:river_movies/src/presentation/base/base_view_holder.dart';
import 'package:river_movies/src/presentation/model/movie_view_data_model.dart';

class MovieViewHolder extends BaseViewHolder<MovieViewDataModel> {
  MovieViewHolder(MovieViewDataModel item, Function(MovieViewDataModel) action) : super(item, action);

  @override
  Widget createContent(BuildContext context, MovieViewDataModel movie) {
    final width = MediaQuery.of(context).size.width / 2.6;

    return Container(
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
              imageUrl: movie.posterPath,
              width: width,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
