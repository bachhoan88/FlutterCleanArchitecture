import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_view_holder.dart';
import 'package:flutter_clean_architecture/src/presentation/model/movie_view_data_model.dart';

class MovieViewHolder extends BaseViewHolder<MovieViewDataModel> {
  const MovieViewHolder(MovieViewDataModel item, Function(MovieViewDataModel) action, {Key? key})
      : super(item, action, key: key);

  @override
  Widget createContent(BuildContext context, MovieViewDataModel data) {
    final width = MediaQuery.of(context).size.width / 2.6;

    return Container(
      width: width,
      height: double.infinity,
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Card(
        elevation: 10.0,
        borderOnForeground: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(0.0),
          width: width,
          height: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: CachedNetworkImage(
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              imageUrl: data.posterPath,
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
