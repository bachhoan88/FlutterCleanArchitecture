import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_stateless_view.dart';
import 'package:flutter_clean_architecture/src/presentation/di/view_model_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/model/movie_info_view_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/detail/detail_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/extension/build_context.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/loading.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/star_rating.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MovieInfoView extends BaseStatelessView<DetailViewModel> {
  final int movieId;
  const MovieInfoView({Key? key, required this.movieId}) : super(key: key);

  @override
  Widget createView(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final movieInfo = ref.watch(detailViewModelProvider(movieId).select((value) => value.movieInfo));
      return movieInfo.when(data: (data) {
        return _createMovieBody(context, data);
      }, loading: () {
        return const Loading();
      }, error: (e, s) {
        return const SizedBox();
      });
    });
  }

  @override
  ProviderBase<DetailViewModel> get viewModelProvider => detailViewModelProvider(movieId);

  @override
  void pageErrorRetry(BuildContext context, WidgetRef ref) {
    ref.watch(detailViewModelProvider(movieId).notifier).getMovieInfo();
  }

  Widget _createMovieBody(BuildContext context, MovieInfoViewDataModel info) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: Text(
            info.title ?? '',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: Text(
            info.categories,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: StarRating(
            size: 24.0,
            rating: info.voteAverage / 2,
            color: Colors.red,
            borderColor: Colors.black54,
            starCount: 5,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(''),
              Column(
                children: [
                  Text(
                    context.res().year,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    info.year,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    context.res().country,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    info.countries,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 18.0),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    context.res().length,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    info.runtime.toString(),
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontSize: 18.0,
                        ),
                  )
                ],
              ),
              const Text(''),
            ],
          ),
        ),
        _createMovieOverview(context, info.overview),
      ],
    );
  }

  Widget _createMovieOverview(BuildContext context, String overview) {
    return Consumer(builder: (context, ref, child) {
      var expanded = ref.watch(detailViewModelProvider(movieId)).expanded;
      return InkWell(
        onTap: ref.watch(detailViewModelProvider(movieId).notifier).toggleExpand,
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 24.0, right: 24.0, top: 8.0),
          child: Text(
            overview,
            textAlign: TextAlign.justify,
            maxLines: expanded ? 100 : 5,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      );
    });
  }
}
