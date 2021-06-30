abstract class ModelItemMapper<ModelDataModel, ModelItem> {
  ModelItem mapperTo(ModelDataModel data);

  ModelDataModel mapperFrom(ModelItem data) => throw UnimplementedError();
}
