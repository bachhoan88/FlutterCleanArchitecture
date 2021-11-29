// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorDataModel _$ErrorDataModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ErrorDataModel',
      json,
      ($checkedConvert) {
        final val = ErrorDataModel(
          errorCode: $checkedConvert('errorCode', (v) => v as int?),
          message: $checkedConvert('message', (v) => v as String?),
        );
        return val;
      },
    );
