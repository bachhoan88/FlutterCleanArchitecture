import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';
part 'company.freezed.dart';

@freezed
abstract class Company with _$Company {
  factory Company({
    int id,
    @JsonKey(name: 'logo_path')
    String logoPath,
    String name,
    @JsonKey(name: 'original_country')
    String originalCountry,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}
