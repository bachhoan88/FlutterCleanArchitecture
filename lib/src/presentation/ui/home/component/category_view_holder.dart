import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:river_movies/src/presentation/base/base_view_holder.dart';
import 'package:river_movies/src/presentation/model/movie_view_data_model.dart';
import 'package:river_movies/src/presentation/ui/theme/color.dart';

class CategoryViewHolder extends BaseViewHolder<MovieViewDataModel> {
  CategoryViewHolder(MovieViewDataModel movieItem, Function(MovieViewDataModel) actionOnItemClicked) : super(movieItem, actionOnItemClicked);

  @override
  Widget createContent(BuildContext context, MovieViewDataModel movie) {
    final width = MediaQuery.of(context).size.width / 2.5;
    return Container(
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
                  imageUrl: movie.backdropPath,
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
    );
  }
}
