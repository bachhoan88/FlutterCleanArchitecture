import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_view_holder.dart';
import 'package:flutter_clean_architecture/src/presentation/model/image_view_data_model.dart';

class ScreenshotViewHolder extends BaseViewHolder<ImageViewDataModel> {
  const ScreenshotViewHolder(ImageViewDataModel item, Function(ImageViewDataModel) action, {Key? key})
      : super(item, action, key: key);

  @override
  Widget createContent(BuildContext context, ImageViewDataModel data) {
    final width = MediaQuery.of(context).size.width / 2.4;
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
