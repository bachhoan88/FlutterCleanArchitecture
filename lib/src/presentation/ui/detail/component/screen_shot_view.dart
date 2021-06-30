import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_clean_architecture/src/presentation/base/common_state_view.dart';
import 'package:flutter_clean_architecture/src/presentation/di/view_model_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/model/image_view_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/detail/component/screenshot_view_holder.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/stateful_wrapper.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/extension/build_context.dart';

class ScreenshotView extends HookWidget {
  final int movieId;
  final Function(ImageViewDataModel) actionOpenImage;
  final Function() actionLoadAll;

  const ScreenshotView({
    Key? key,
    required this.movieId,
    required this.actionOpenImage,
    required this.actionLoadAll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        context.read(detailViewModelProvider).getMovieImage(movieId);
      },
      child: CommonStateView<List<ImageViewDataModel>>(
        value: useProvider(
            detailViewModelProvider.select((value) => value.images)),
        errorRetry: () {
          context.read(detailViewModelProvider).getMovieImage(movieId);
        },
        child: (images) {
          return _createScreenshotView(context, images);
        },
      ),
    );
  }

  Widget _createScreenshotView(
      BuildContext context, List<ImageViewDataModel> images) {
    final contentHeight = 2.0 * (MediaQuery.of(context).size.width / 2.2) / 3.0;
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 20.0, right: 16.0),
          height: 48.0,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  context.res().screenshot,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: ColorName.groupTitleColor,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward, color: ColorName.groupTitleColor),
                onPressed: actionLoadAll,
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0.0),
          height: contentHeight,
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ScreenshotViewHolder(images[index], actionOpenImage);
            },
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const VerticalDivider(
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
