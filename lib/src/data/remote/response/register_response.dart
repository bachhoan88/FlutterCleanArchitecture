import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';
part 'register_response.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class RegisterResponse with DataModel {
  final String? username;

  RegisterResponse({this.username});
  factory RegisterResponse.fromJson(Map<String, dynamic> json) => _$RegisterResponseFromJson(json);
}