import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';

part 'collection_data_model.freezed.dart';
part 'collection_data_model.g.dart';

@freezed
class CollectionDataModel with _$CollectionDataModel, DataModel {
  const factory CollectionDataModel({
    int? id,
    String? name,
    @JsonKey(name: 'poster_path')
    String? posterPath,
    @JsonKey(name: 'backdrop_path')
    String? backdropPath,
  }) = _CollectionDataModel;

  factory CollectionDataModel.fromJson(Map<String, dynamic> json) => _$CollectionDataModelFromJson(json);
}
