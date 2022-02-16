import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/gen/assets.gen.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';
import 'package:flutter_clean_architecture/src/presentation/di/view_model_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/model/movie_view_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/favorite_icon_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'component/custom_shape_clip_oval.dart';
import 'component/view.dart';

const detailPageRoutes = '/detail';

class DetailPage extends ConsumerWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        body: _createDetailBody(context, ref),
      ),
    );
  }

  Widget _createDetailBody(BuildContext context, WidgetRef ref) {
    final movie = ModalRoute.of(context)?.settings.arguments as MovieViewDataModel;
    ref.watch(detailViewModelProvider(movie.id).notifier).setMovieId(movie.id);

    return Stack(
      children: [
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
                child: Column(
                  children: [
                    _createDetailHeader(context),
                    MovieInfoView(movieId: movie.id,),
                    const Divider(height: 8.0, color: Colors.transparent),
                    ScreenshotView(
                      movieId: movie.id,
                      actionOpenImage: (img) {},
                      actionLoadAll: () {},
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        _createAppbar(context),
      ],
    );
  }

  Widget _createDetailHeader(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(0.0),
      width: double.infinity,
      height: width + 56.0,
      child: Stack(
        children: [
          ClipPath(
            clipper: const CustomShapeOval(),
            child: Container(
              padding: const EdgeInsets.all(0.0),
              width: double.infinity,
              height: width,
              child: _createHeaderImage(context),
            ),
          ),
          _createHeaderAction(context),
        ],
      ),
    );
  }

  Widget _createAppbar(BuildContext context) {
    return Positioned(
      top: 0.0,
      left: 0.0,
      right: 0.0,
      child: AppBar(
        elevation: 0.0,
        titleSpacing: 4.0,
        backgroundColor: Colors.transparent,
        title: Assets.images.icNetflix.image(
          height: 56.0,
          fit: BoxFit.fitHeight,
        ),
        centerTitle: true,
        leading: Container(
          padding: const EdgeInsets.only(left: 16.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: ColorName.actionBarIconColor),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 16.0),
            child: FavoriteIconWidget(isFavorite: false, onFavoriteChanged: (checked) {}),
          ),
        ],
      ),
    );
  }

  Widget _createHeaderImage(BuildContext context) {
    final MovieViewDataModel movie = ModalRoute.of(context)?.settings.arguments as MovieViewDataModel;
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(0.0),
          child: CachedNetworkImage(
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            imageUrl: movie.backdropPath,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: List.of([0.0, 0.5, 0.7, 0.9]),
              colors: [
                ColorName.white.withOpacity(0.2),
                ColorName.white.withOpacity(0.1),
                ColorName.white.withOpacity(0.05),
                Colors.transparent,
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _createHeaderAction(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 16.0,
          bottom: 8.0,
          child: Container(
            padding: const EdgeInsets.all(0.0),
            width: 64.0,
            height: 64.0,
            child: FittedBox(
              child: IconButton(
                icon: const Icon(Icons.add_rounded, color: ColorName.actionBarIconColor),
                onPressed: () {},
              ),
            ),
          ),
        ),
        Positioned(
          right: 16.0,
          bottom: 8.0,
          child: Container(
            padding: const EdgeInsets.all(0.0),
            width: 64.0,
            height: 64.0,
            child: FittedBox(
              child: IconButton(
                icon: const Icon(Icons.share_outlined, color: ColorName.actionBarIconColor),
                onPressed: () {},
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 0.0,
          right: 0.0,
          child: FractionalTranslation(
            translation: const Offset(0.0, -0.2),
            child: Container(
              padding: const EdgeInsets.all(0.0),
              width: 72.0,
              height: 72.0,
              child: FittedBox(
                child: FloatingActionButton(
                  elevation: 10.0,
                  onPressed: () {},
                  backgroundColor: ColorName.white,
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.red,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
