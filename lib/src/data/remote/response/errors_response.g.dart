// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errors_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorsResponse _$ErrorsResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ErrorsResponse',
      json,
      ($checkedConvert) {
        final val = ErrorsResponse(
          errors: $checkedConvert(
              'errors',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => ErrorDataModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );
