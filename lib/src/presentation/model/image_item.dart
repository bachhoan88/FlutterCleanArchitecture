import 'package:river_movies/src/data/model/image_entity.dart';
import 'package:river_movies/src/presentation/base/model_item_mapper.dart';

class ImageItem {
  final String imagePath;

  ImageItem({this.imagePath});
}

class ImageItemMapper extends ModelItemMapper<ImageEntity, ImageItem> {

  @override
  ImageItem mapperTo(ImageEntity data) {
    return ImageItem(imagePath: 'https://image.tmdb.org/t/p/w500${data.imagePath}');
  }
}
