import 'package:river_movies/src/data/model/models.dart';

MovieDataModel get createMovie => MovieDataModel(
  id: 1,
  voteCount: 100,
  video: false,
  voteAverage: 4.0,
  title: 'Movie name',
  posterPath: 'poster-path',
  popularity: 2.0,
  originalLanguage: 'en',
  originalTitle: 'Movie name',
  genreIds: List.of([1, 2, 3]),
  backdropPath: 'backdrop-path',
  adult: false,
  overview: 'movie overview',
  releaseDate: '2020-12-12',
);

String createMovieJson = '{  "page": 1,  "total_pages": 413,  "total_results": 8246,  "results": [    {      "adult": false,      "backdro'
    'p_path": "/fQq1FWp1rC89xDrRMuyFJdFUdMd.jpg",      "genre_ids": [        10749,        35      ],      "id": 761053,      "original_language": "en"'
    ',      "original_title": "Gabriel\'s Inferno Part III",      "overview": "The final part of the film adaption of the erotic romance novel Gabriel\'s '
    'Inferno written by an anonymous Canadian author under the pen name Sylvain Reynard.",      "popularity": 37.144,      "poster_path": "/fYtHxTxlhzD'
    '4QWfEbrC1rypysSD.jpg",      "release_date": "2020-11-19","title": "Gabriel\'s Inferno Part III", "video": false, "vote_average": 9.1, "vote_count": '
    '598}]}';