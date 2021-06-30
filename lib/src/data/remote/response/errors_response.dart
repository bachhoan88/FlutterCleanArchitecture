import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/error_data_model.dart';

part 'errors_response.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class ErrorsResponse with DataModel {
  final List<ErrorDataModel>? errors;

  ErrorsResponse({this.errors});
  factory ErrorsResponse.fromJson(Map<String, dynamic> json) => _$ErrorsResponseFromJson(json);
}