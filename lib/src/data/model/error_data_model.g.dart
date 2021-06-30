// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorDataModel _$ErrorDataModelFromJson(Map<String, dynamic> json) {
  return $checkedNew('ErrorDataModel', json, () {
    final val = ErrorDataModel(
      errorCode: $checkedConvert(json, 'errorCode', (v) => v as int?),
      message: $checkedConvert(json, 'message', (v) => v as String?),
    );
    return val;
  });
}
