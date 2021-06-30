import 'package:flutter_clean_architecture/src/data/model/models.dart';
import 'package:flutter_clean_architecture/src/presentation/base/model_item.dart';
import 'package:flutter_clean_architecture/src/presentation/base/model_item_mapper.dart';

class MovieViewDataModel with ModelItem {
  final int id;
  final String title;
  final String releaseDate;
  final String backdropPath;
  final String posterPath;

  MovieViewDataModel({required this.id, required this.title, required this.releaseDate, required this.backdropPath, required this.posterPath});
}

class MovieViewDataModelMapper extends ModelItemMapper<MovieDataModel, MovieViewDataModel> {
  @override
  MovieViewDataModel mapperTo(MovieDataModel data) {
    return MovieViewDataModel(
      id: data.id ?? -1,
      title: data.title ?? '',
      releaseDate: data.releaseDate ?? '',
      backdropPath: 'https://image.tmdb.org/t/p/w500${data.backdropPath}',
      posterPath: 'https://image.tmdb.org/t/p/w500${data.posterPath}',
    );
  }
}
