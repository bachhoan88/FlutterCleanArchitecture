import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/res.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:river_movies/src/presentation/base/async_value_view.dart';
import 'package:river_movies/src/presentation/model/image_item.dart';
import 'package:river_movies/src/presentation/ui/detail/component/screenshot_view_holder.dart';
import 'package:river_movies/src/presentation/ui/theme/color.dart';

import '../detail_view_model.dart';

class ScreenshotView extends HookWidget {
  final int movieId;
  final Function(ImageItem) actionOpenImage;
  final Function actionLoadAll;

  const ScreenshotView({Key key, @required this.movieId, @required this.actionOpenImage, @required this.actionLoadAll}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AsyncValueView<List<ImageItem>>(
        value: useProvider(getMovieImageProvider(movieId).state),
        errorRetry: () {
          context.refresh(getMovieImageProvider(movieId));
        },
        child: (images) {
          return _createScreenshotView(context, images);
        });
  }

  Widget _createScreenshotView(BuildContext context, List<ImageItem> images) {
    final contentHeight = 2.0 * (MediaQuery.of(context).size.width / 2.2) / 3.0;
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 20.0, right: 16.0),
          height: 48.0,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  Resource.of(context).screenshot,
                  style: TextStyle(
                    color: groupTitleColor,
                    fontSize: 16.0,
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward, color: groupTitleColor),
                onPressed: () {
                  return actionLoadAll;
                },
              )
            ],
          ),
        ),
        Container(
          height: contentHeight,
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ScreenshotViewHolder(images[index], actionOpenImage);
            },
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => VerticalDivider(
              color: Colors.transparent,
              width: 6.0,
            ),
            itemCount: images.length,
          ),
        ),
      ],
    );
  }
}
