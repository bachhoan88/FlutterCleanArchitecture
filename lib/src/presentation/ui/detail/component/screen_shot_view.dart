import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/res.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:river_movies/src/presentation/base/common_state_view.dart';
import 'package:river_movies/src/presentation/di/view_model_provider.dart';
import 'package:river_movies/src/presentation/model/image_view_data_model.dart';
import 'package:river_movies/src/presentation/ui/detail/component/screenshot_view_holder.dart';
import 'package:river_movies/src/presentation/ui/theme/color.dart';
import 'package:river_movies/src/presentation/ui/widget/stateful_wrapper.dart';
class ScreenshotView extends HookWidget {
  final int movieId;
  final Function(ImageViewDataModel) actionOpenImage;
  final Function actionLoadAll;

  const ScreenshotView({Key key, @required this.movieId, @required this.actionOpenImage, @required this.actionLoadAll}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        context.read(detailViewModelProvider).getMovieImage(movieId);
      },
      child: CommonStateView<List<ImageViewDataModel>>(
        value: useProvider(detailViewModelProvider.select((value) => value.images)),
        errorRetry: () {
          context.read(detailViewModelProvider).getMovieImage(movieId);
        },
        child: (images) {
          return _createScreenshotView(context, images);
        },
      ),
    );
  }

  Widget _createScreenshotView(BuildContext context, List<ImageViewDataModel> images) {
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
