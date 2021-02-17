import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:river_movies/gen/assets.gen.dart';
import 'package:river_movies/src/presentation/model/movie_view_data_model.dart';
import 'package:river_movies/src/presentation/ui/detail/detail_page.dart';
import 'package:river_movies/src/presentation/ui/theme/color.dart';

import 'component/category_view.dart';
import 'component/my_list_view.dart';
import 'component/popular_view.dart';
import 'component/slider_view.dart';

const homePageRoutes = '/';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 4.0,
        backgroundColor: primaryColor,
        title: Assets.images.icNetflix.image(
          height: 56.0,
          fit: BoxFit.fitHeight,
        ),
        centerTitle: true,
        leading: Container(
          padding: EdgeInsets.only(left: 16.0),
          child: IconButton(
            icon: Icon(Icons.menu_rounded, color: actionBarIconColor),
            onPressed: () {},
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: Icon(Icons.search, color: actionBarIconColor),
              onPressed: () {},
            ),
          ),
        ],
        elevation: 0.0,
      ),
      backgroundColor: backgroundColor,
      body: _createBody(context),
    );
    // return Container();
  }

  Widget _createBody(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
            child: Container(
              child: Column(
                children: [
                  SliderView(
                    actionOpenMovie: (movie) {
                      _openMovieDetail(movie);
                    },
                  ),
                  Divider(height: 4.0, color: Colors.transparent),
                  CategoryView(
                    actionOpenCategory: (movie) {
                      _openMovieDetail(movie);
                    },
                  ),
                  Divider(height: 8.0, color: Colors.transparent),
                  MyListView(
                    actionOpenMovie: (movie) {
                      _openMovieDetail(movie);
                    },
                    actionLoadAll: () {},
                  ),
                  Divider(height: 8.0, color: Colors.transparent),
                  PopularView(
                    actionOpenMovie: (movie) {
                      _openMovieDetail(movie);
                    },
                    actionLoadAll: () {},
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _openMovieDetail(MovieViewDataModel movie) async {
    await Get.toNamed(detailPageRoutes, arguments: movie);
  }
}
