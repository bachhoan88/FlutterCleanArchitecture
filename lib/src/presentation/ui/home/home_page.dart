import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';
import 'package:flutter_clean_architecture/gen/assets.gen.dart';
import 'package:flutter_clean_architecture/src/presentation/model/movie_view_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/detail/detail_page.dart';
import 'component/view.dart';

const homePageRoutes = '/';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 4.0,
        backgroundColor: ColorName.primaryColor,
        title: Assets.images.icNetflix.image(
          height: 56.0,
          fit: BoxFit.fitHeight,
        ),
        centerTitle: true,
        leading: Container(
          padding: const EdgeInsets.only(left: 16.0),
          child: IconButton(
            icon: const Icon(Icons.menu_rounded, color: ColorName.actionBarIconColor),
            onPressed: () {},
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: const Icon(Icons.search, color: ColorName.actionBarIconColor),
              onPressed: () {},
            ),
          ),
        ],
        elevation: 0.0,
      ),
      backgroundColor: ColorName.backgroundColor,
      body: _createBody(context),
    );
    // return Container();
  }

  Widget _createBody(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: viewportConstraints.maxHeight),
            child: Column(
              children: [
                SliderView(
                  actionOpenMovie: (movie) {
                    _openMovieDetail(context, movie);
                  },
                ),
                const Divider(height: 4.0, color: Colors.transparent),
                CategoryView(
                  actionOpenCategory: (movie) {
                    _openMovieDetail(context, movie);
                  },
                ),
                const Divider(height: 8.0, color: Colors.transparent),
                MyListView(
                  actionOpenMovie: (movie) {
                    _openMovieDetail(context, movie);
                  },
                  actionLoadAll: () {},
                ),
                const Divider(height: 8.0, color: Colors.transparent),
                PopularView(
                  actionOpenMovie: (movie) {
                    _openMovieDetail(context, movie);
                  },
                  actionLoadAll: () {},
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _openMovieDetail(BuildContext context, MovieViewDataModel movie) async {
    await Navigator.pushNamed(context, detailPageRoutes, arguments: movie);
  }
}
