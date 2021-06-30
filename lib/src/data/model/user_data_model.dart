import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
class UserDataModel with _$UserDataModel, DataModel {
  const factory UserDataModel({
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'password') String? password,
  }) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) => _$UserDataModelFromJson(json);
}
