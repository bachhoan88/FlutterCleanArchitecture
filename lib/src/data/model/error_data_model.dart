import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';

part 'error_data_model.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class ErrorDataModel with DataModel implements Equatable {
  final int? errorCode;
  final String? message;

  ErrorDataModel({this.errorCode, this.message});

  factory ErrorDataModel.fromJson(Map<String, dynamic> json) => _$ErrorDataModelFromJson(json);

  @override
  List<Object?> get props => [errorCode, message];

  @override
  bool? get stringify => true;
}