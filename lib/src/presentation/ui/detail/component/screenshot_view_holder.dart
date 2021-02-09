import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:river_movies/src/presentation/base/base_view_holder.dart';
import 'package:river_movies/src/presentation/model/image_view_data_model.dart';

class ScreenshotViewHolder extends BaseViewHolder<ImageViewDataModel> {
  ScreenshotViewHolder(ImageViewDataModel item, Function(ImageViewDataModel) action) : super(item, action);

  @override
  Widget createContent(BuildContext context, ImageViewDataModel data) {
    final width = MediaQuery.of(context).size.width / 2.4;
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
              imageUrl: data.imagePath,
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
