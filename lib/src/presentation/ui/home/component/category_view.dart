import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/movie/fetch_movies_usecase.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_stateless_view.dart';
import 'package:flutter_clean_architecture/src/presentation/di/view_model_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/model/movie_view_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/home/component/category_view_holder.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/home/home_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/widget/loading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategoryView extends BaseStatelessView<HomeViewModel> {
  final Function(MovieViewDataModel) actionOpenCategory;

  const CategoryView({
    Key? key,
    required this.actionOpenCategory,
  }) : super(key: key);

  @override
  Widget createView(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final movies = ref.watch(homeViewModelProvider.select((value) => value.categoryMovies));
      return movies.when(data: (data) {
        return _createCategoryList(context, data);
      }, loading: () {
        return const Loading();
      }, error: (e, s) {
        return const SizedBox();
      });
    });
  }

  @override
  void pageErrorRetry(BuildContext context, WidgetRef ref) {
    ref.watch(homeViewModelProvider.notifier).getMovieWithType(MovieType.upcoming, retry: true);
  }

  @override
  ProviderBase<HomeViewModel> get viewModelProvider => homeViewModelProvider;

  Widget _createCategoryList(BuildContext context, List<MovieViewDataModel> movies) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      width: double.infinity,
      height: 96.0,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return CategoryViewHolder(movieItem: movies[index], actionOnItemClicked: actionOpenCategory);
        },
        itemCount: movies.length,
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const VerticalDivider(
          color: Colors.transparent,
          width: 6.0,
        ),
      ),
    );
  }
}
