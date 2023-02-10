import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/movie/get_movie_image_usecase.dart';
import 'package:flutter_clean_architecture/src/domain/usecase/movie/get_movie_info_usecase.dart';
import 'package:flutter_clean_architecture/src/presentation/base/base_view_model.dart';
import 'package:flutter_clean_architecture/src/presentation/model/image_view_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/model/movie_info_view_data_model.dart';

class DetailViewModel extends BaseViewModel {
  final GetMovieImageUseCase _getMovieImageUseCase;
  final ImageViewDataModelMapper _imageItemMapper;
  final GetMovieInfoUseCase _getMovieInfoUseCase;
  final MovieInfoViewDataModelMapper _movieInfoItemMapper;

  bool _expanded = false;

  bool get expanded => _expanded;

  AsyncValue<List<ImageViewDataModel>> _images = const AsyncValue.loading();

  AsyncValue<List<ImageViewDataModel>> get images => _images;

  AsyncValue<MovieInfoViewDataModel> _movieInfo = const AsyncValue.loading();

  AsyncValue<MovieInfoViewDataModel> get movieInfo => _movieInfo;

  int _movieId = -1;

  DetailViewModel(
      {required GetMovieImageUseCase getMovieImageUseCase,
      ImageViewDataModelMapper? imageViewDataModelMapper,
      required GetMovieInfoUseCase getMovieInfoUseCase,
      MovieInfoViewDataModelMapper? movieInfoViewDataModelMapper})
      : _getMovieImageUseCase = getMovieImageUseCase,
        _imageItemMapper = imageViewDataModelMapper ?? ImageViewDataModelMapper(),
        _getMovieInfoUseCase = getMovieInfoUseCase,
        _movieInfoItemMapper = movieInfoViewDataModelMapper ?? MovieInfoViewDataModelMapper();

  void toggleExpand() {
    _expanded = !_expanded;
    notifyListeners();
  }

  void setMovieId(int movieId) {
    _movieId = movieId;
    getMovieImage();
    getMovieInfo();
  }

  void getMovieImage() async {
    try {
      final value = await _getMovieImageUseCase
          .createObservable(_movieId);
      _images = AsyncValue.data(value.backdrops?.map(_imageItemMapper.mapperTo).toList() ?? []);
    } on Exception catch(e) {
      _images = AsyncValue.error(e, StackTrace.empty);
    } finally {
      notifyListeners();
    }
  }

  void getMovieInfo() async {
    try {
      final value = await _getMovieInfoUseCase
          .createObservable(_movieId);
      _movieInfo = AsyncValue.data(_movieInfoItemMapper.mapperTo(value));
    } on Exception catch(e) {
      _movieInfo = AsyncValue.error(e, StackTrace.empty);
    } finally {
      notifyListeners();
    }
  }
}
