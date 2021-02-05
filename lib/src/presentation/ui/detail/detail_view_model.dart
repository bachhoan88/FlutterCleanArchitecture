import 'package:hooks_riverpod/all.dart';
import 'package:river_movies/src/domain/usecase/movie/get_movie_image_usecase.dart';
import 'package:river_movies/src/domain/usecase/movie/get_movie_info_usecase.dart';
import 'package:river_movies/src/presentation/base/base_view_model.dart';
import 'package:river_movies/src/presentation/di/use_case_provider.dart';
import 'package:river_movies/src/presentation/model/image_item.dart';
import 'package:river_movies/src/presentation/model/movie_info_item.dart';

class DetailViewModel extends BaseViewModel {
  bool expanded = false;

  void toggleExpand() {
    expanded = !expanded;
    notifyListeners();
  }
}

final getMovieImageProvider = StateNotifierProvider.autoDispose.family<GetMovieImage, int>((ref, movieId) => GetMovieImage(getMovieImageUseCase: ref.read(getMovieImageUseCaseProvider), movieId: movieId));

final getMovieInfoProvider = StateNotifierProvider.autoDispose.family<GetMovieInfo, int>(
        (ref, movieId) => GetMovieInfo(getMovieInfoUseCase: ref.read(getMovieInfoUseCaseProvider), movieId: movieId)
);

class GetMovieImage extends StateNotifier<AsyncValue<List<ImageItem>>> {
  final GetMovieImageUseCase _getMovieImageUseCase;
  final ImageItemMapper _imageItemMapper;
  final int _movieId;

  GetMovieImage({GetMovieImageUseCase getMovieImageUseCase, ImageItemMapper imageItemMapper, int movieId})
      : _getMovieImageUseCase = getMovieImageUseCase,
        _movieId = movieId,
        _imageItemMapper = imageItemMapper ?? ImageItemMapper(),
        super(AsyncValue.loading()) {
    _createObserver();
  }

  void _createObserver() {
    _getMovieImageUseCase.createObservable(_movieId).catchError((e) => state = AsyncValue.error(e)).then((value) => state = AsyncValue.data(value.backdrops.map(_imageItemMapper.mapperTo).toList()));
  }
}

class GetMovieInfo extends StateNotifier<AsyncValue<MovieInfoItem>> {
  final GetMovieInfoUseCase _getMovieInfoUseCase;
  final MovieInfoItemMapper _movieInfoItemMapper;
  final int _movieId;

  GetMovieInfo({int movieId, GetMovieInfoUseCase getMovieInfoUseCase, MovieInfoItemMapper mapper})
      : _getMovieInfoUseCase = getMovieInfoUseCase,
        _movieInfoItemMapper = mapper ?? MovieInfoItemMapper(),
        _movieId = movieId,
        super(AsyncValue.loading()) {
    _createObserver();
  }

  void _createObserver() {
    _getMovieInfoUseCase.createObservable(_movieId).catchError((e) => state = AsyncValue.error(e)).then((value) => state = AsyncValue.data(_movieInfoItemMapper.mapperTo(value)));
  }
}
