import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:river_movies/src/presentation/base/base_view_holder.dart';
import 'package:river_movies/src/presentation/model/movie_view_data_model.dart';
import 'package:river_movies/src/presentation/ui/theme/color.dart';

class SlideViewHolder extends BaseViewHolder<MovieViewDataModel> {
  SlideViewHolder(MovieViewDataModel item, Function(MovieViewDataModel) actionOnItemClicked) : super(item, actionOnItemClicked);

  @override
  Widget createContent(BuildContext context, MovieViewDataModel movie) {
    final width = MediaQuery.of(context).size.width;

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
            borderRadius: BorderRadius.circular(12.0),
            child: Stack(
              children: [
                CachedNetworkImage(
                  placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(),
                  ),
                  imageUrl: movie.backdropPath,
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
    );
  }
}
