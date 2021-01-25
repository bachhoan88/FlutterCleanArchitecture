import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

part 'country.freezed.dart';

@freezed
abstract class Country with _$Country {
  factory Country({
    String name,
    @JsonKey(name: 'iso_3166_1')
    String code,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);
}
