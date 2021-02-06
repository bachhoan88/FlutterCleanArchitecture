import 'package:river_movies/src/data/model/image_data_model.dart';
import 'package:river_movies/src/presentation/base/model_item_mapper.dart';

class ImageViewDataModel {
  final String imagePath;

  ImageViewDataModel({this.imagePath});
}

class ImageViewDataModelMapper extends ModelItemMapper<ImageDataModel, ImageViewDataModel> {

  @override
  ImageViewDataModel mapperTo(ImageDataModel data) {
    return ImageViewDataModel(imagePath: 'https://image.tmdb.org/t/p/w500${data.imagePath}');
  }
}
