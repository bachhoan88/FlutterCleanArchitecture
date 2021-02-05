import 'package:river_movies/src/domain/mapper/mapper.dart';
import 'package:flutter_gen/gen_l10n/res.dart';
import 'package:flutter_gen/gen_l10n/res_en.dart';

class ResourceMapper extends Mapper<String, Resource> {
  @override
  Future<String> mapperFrom(Resource data) => throw UnimplementedError();

  @override
  Future<Resource> mapperTo(String code) async {
    switch (code) {
      default:
        return ResourceEn();
    }
  }
}