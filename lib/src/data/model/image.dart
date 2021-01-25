import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

part 'image.freezed.dart';

@freezed
abstract class Img with _$Img {

  factory Img({
    @JsonKey(name: 'aspect_ratio')
    double aspect,
    @JsonKey(name: 'file_path')
    String imagePath,
    int height,
    int width,
    @JsonKey(name: 'iso_639_1')
    String countryCode,
    @JsonKey(name: 'vote_average')
    int voteAverage,
    @JsonKey(name: 'vote_count')
    int voteCount,
  }) = _Img;

  factory Img.fromJson(Map<String, dynamic> json) => _$ImgFromJson(json);
}
