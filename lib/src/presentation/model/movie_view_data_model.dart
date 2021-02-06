import 'package:river_movies/src/data/model/models.dart';
import 'package:river_movies/src/presentation/base/model_item.dart';
import 'package:river_movies/src/presentation/base/model_item_mapper.dart';

class MovieViewDataModel with ModelItem {
  final int id;
  final String title;
  final String releaseDate;
  final String backdropPath;
  final String posterPath;

  MovieViewDataModel({this.id, this.title, this.releaseDate, this.backdropPath, this.posterPath});
}

class MovieViewDataModelMapper extends ModelItemMapper<MovieDataModel, MovieViewDataModel> {
  @override
  MovieViewDataModel mapperTo(MovieDataModel data) {
    return MovieViewDataModel(
      id: data.id,
      title: data.title ?? '',
      releaseDate: data.releaseDate ?? '',
      backdropPath: 'https://image.tmdb.org/t/p/w500${data.backdropPath}',
      posterPath: 'https://image.tmdb.org/t/p/w500${data.posterPath}',
    );
  }
}
