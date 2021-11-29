// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_db_error_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDbErrorDataModel _$MovieDbErrorDataModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'MovieDbErrorDataModel',
      json,
      ($checkedConvert) {
        final val = MovieDbErrorDataModel(
          statusCode: $checkedConvert('status_code', (v) => v as int?),
          statusMessage: $checkedConvert('status_message', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'statusCode': 'status_code',
        'statusMessage': 'status_message'
      },
    );
