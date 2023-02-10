import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_stateless_view.dart';
import 'package:flutter_clean_architecture/src/presentation/di/view_model_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/model/image_view_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/detail/component/screenshot_view_holder.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/detail/detail_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/extension/build_context.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/loading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScreenshotView extends BaseStatelessView<DetailViewModel> {
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
  Widget createView(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final images = ref.watch(detailViewModelProvider(movieId).select((value) => value.images));
      return images.when(data: (data) {
        return _createScreenshotView(context, data);
      }, loading: () {
        return const Loading();
      }, error: (e, s) {
        return const SizedBox();
      });
    });
  }

  @override
  ProviderBase<DetailViewModel> get viewModelProvider => detailViewModelProvider(movieId);

  Widget _createScreenshotView(BuildContext context, List<ImageViewDataModel> images) {
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
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
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
