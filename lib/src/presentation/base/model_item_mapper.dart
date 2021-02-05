import 'package:river_movies/src/data/base/model_entity.dart';
import 'package:river_movies/src/domain/mapper/mapper.dart';
import 'package:river_movies/src/presentation/base/model_item.dart';

abstract class ModelItemMapper<ModelEntity, ModelItem> {
  ModelItem mapperTo(ModelEntity data);

  ModelEntity mapperFrom(ModelItem data) => throw UnimplementedError();
}
