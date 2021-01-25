import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'language.g.dart';
part 'language.freezed.dart';

@freezed
abstract class Language with _$Language {
  factory Language({
    String name,
    @JsonKey(name: 'english_name')
    String engName,
    @JsonKey(name: 'iso_639_1')
    String countryCode,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);
}
