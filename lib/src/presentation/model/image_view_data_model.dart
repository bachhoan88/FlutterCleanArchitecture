import 'package:flutter_clean_architecture/src/data/model/image_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/base/model_item_mapper.dart';

class ImageViewDataModel {
  final String imagePath;

  ImageViewDataModel({required this.imagePath});
}

class ImageViewDataModelMapper extends ModelItemMapper<ImageDataModel, ImageViewDataModel> {

  @override
  ImageViewDataModel mapperTo(ImageDataModel data) {
    return ImageViewDataModel(imagePath: 'https://image.tmdb.org/t/p/w500${data.imagePath}');
  }
}
