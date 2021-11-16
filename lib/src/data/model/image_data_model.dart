import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';

part 'image_data_model.g.dart';
part 'image_data_model.freezed.dart';

@freezed
class ImageDataModel with _$ImageDataModel, DataModel {
  const factory ImageDataModel({
    @JsonKey(name: 'file_path')
    String? imagePath,
    int? height,
    int? width,
    @JsonKey(name: 'iso_639_1')
    String? countryCode,
    @JsonKey(name: 'vote_average')
    double? voteAverage,
    @JsonKey(name: 'vote_count')
    int? voteCount,
  }) = _ImageDataModel;

  factory ImageDataModel.fromJson(Map<String, dynamic> json) => _$ImageDataModelFromJson(json);
}
