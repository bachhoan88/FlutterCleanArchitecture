import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:river_movies/src/domain/usecase/movie/get_movie_image_usecase.dart';
import 'package:river_movies/src/domain/usecase/movie/get_movie_info_usecase.dart';
import 'package:river_movies/src/presentation/base/base_view_model.dart';
import 'package:river_movies/src/presentation/model/image_view_data_model.dart';
import 'package:river_movies/src/presentation/model/movie_info_view_data_model.dart';

class DetailViewModel extends BaseViewModel {
  final GetMovieImageUseCase _getMovieImageUseCase;
  final ImageViewDataModelMapper _imageItemMapper;
  final GetMovieInfoUseCase _getMovieInfoUseCase;
  final MovieInfoViewDataModelMapper _movieInfoItemMapper;

  bool _expanded = false;

  bool get expanded => _expanded;

  AsyncValue<List<ImageViewDataModel>> _images = AsyncValue.loading();

  AsyncValue<List<ImageViewDataModel>> get images => _images;

  AsyncValue<MovieInfoViewDataModel> _movieInfo = AsyncValue.loading();

  AsyncValue<MovieInfoViewDataModel> get movieInfo => _movieInfo;

  DetailViewModel(
      {@required GetMovieImageUseCase getMovieImageUseCase,
      ImageViewDataModelMapper imageViewDataModelMapper,
      @required GetMovieInfoUseCase getMovieInfoUseCase,
      MovieInfoViewDataModelMapper movieInfoViewDataModelMapper})
      : _getMovieImageUseCase = getMovieImageUseCase,
        _imageItemMapper = imageViewDataModelMapper ?? ImageViewDataModelMapper(),
        _getMovieInfoUseCase = getMovieInfoUseCase,
        _movieInfoItemMapper = movieInfoViewDataModelMapper ?? MovieInfoViewDataModelMapper();

  void toggleExpand() {
    _expanded = !_expanded;
    notifyListeners();
  }

  void getMovieImage(int movieId) {
    _getMovieImageUseCase
        .createObservable(movieId)
        .catchError((e) {
          _images = AsyncValue.error(e);
        })
        .then((value) => _images = AsyncValue.data(value.backdrops.map(_imageItemMapper.mapperTo).toList()))
        .whenComplete(notifyListeners);
  }

  void getMovieInfo(int movieId) {
    _getMovieInfoUseCase
        .createObservable(movieId)
        .catchError((e) {
          _movieInfo = AsyncValue.error(e);
        })
        .then((value) => _movieInfo = AsyncValue.data(_movieInfoItemMapper.mapperTo(value)))
        .whenComplete(notifyListeners);
  }
}
