import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';

part 'token_data_model.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class TokenDataModel with DataModel implements Equatable {
  final String? token;

  TokenDataModel(this.token);

  factory TokenDataModel.fromJson(Map<String, dynamic> json) => _$TokenDataModelFromJson(json);

  @override
  List<Object?> get props => [token];

  @override
  bool? get stringify => true;
}