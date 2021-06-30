import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/error_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_db_error_data_model.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class MovieDbErrorDataModel with DataModel implements Equatable {
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @JsonKey(name: 'status_message')
  final String? statusMessage;

  MovieDbErrorDataModel({this.statusCode, this.statusMessage});

  factory MovieDbErrorDataModel.fromJson(Map<String, dynamic> json) => _$MovieDbErrorDataModelFromJson(json);

  @override
  List<Object?> get props => [statusCode, statusMessage];

  @override
  bool? get stringify => true;
}

extension MovieDbErrorDataModelExt on MovieDbErrorDataModel {
  ErrorDataModel toErrorDataModel() => ErrorDataModel(
    errorCode: statusCode,
    message: statusMessage,
  );
}