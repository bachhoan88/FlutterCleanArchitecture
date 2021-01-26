import 'package:river_movies/src/data/model/movie_info_entity.dart';
import 'package:river_movies/src/presentation/base/model_item_mapper.dart';

class MovieInfoItem {
  final String title;
  final String overview;
  final double voteAverage;
  final int runtime;
  final String countries;
  final String year;
  final String categories;

  MovieInfoItem({this.title, this.overview, this.voteAverage, this.runtime, this.countries, this.year, this.categories});
}

class MovieInfoItemMapper extends ModelItemMapper<MovieInfoEntity, MovieInfoItem> {
  @override
  MovieInfoItem mapperTo(MovieInfoEntity data) {
    return MovieInfoItem(
      title: data.title ?? '',
      overview: data.overview ?? '',
      voteAverage: data.voteAverage ?? 0.0,
      runtime: data.runtime ?? 0,
      countries: ((data.countries?.length ?? 0) > 0)
          ? data.countries?.skip(1)?.fold(data.countries?.first?.code ?? '', (previousValue, element) => previousValue += ', ${element.code}') ?? ''
          : '',
      year: (data.releaseDate?.length ?? 0) >= 4 ? data.releaseDate.substring(0, 4) : '',
      categories: data.genres?.skip(1)?.fold(data.genres?.first?.name ?? '', (previousValue, element) => previousValue += ', ${element.name}') ?? ''
    );
  }
}