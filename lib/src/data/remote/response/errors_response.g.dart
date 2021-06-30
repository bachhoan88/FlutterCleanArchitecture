// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errors_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorsResponse _$ErrorsResponseFromJson(Map<String, dynamic> json) {
  return $checkedNew('ErrorsResponse', json, () {
    final val = ErrorsResponse(
      errors: $checkedConvert(
          json,
          'errors',
          (v) => (v as List<dynamic>?)
              ?.map((e) => ErrorDataModel.fromJson(e as Map<String, dynamic>))
              .toList()),
    );
    return val;
  });
}
