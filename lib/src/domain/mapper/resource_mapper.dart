import 'package:flutter_clean_architecture/src/domain/mapper/mapper.dart';
import 'package:flutter_gen/gen_l10n/res.dart';
import 'package:flutter_gen/gen_l10n/res_en.dart';
import 'package:flutter_gen/gen_l10n/res_ja.dart';

class ResourceMapper extends Mapper<String, Resource> {
  @override
  Future<String> mapperFrom(Resource data) => throw UnimplementedError();

  @override
  Future<Resource> mapperTo(String data) async {
    switch (data) {
      case 'ja':
        return ResourceJa();

      default:
        return ResourceEn();
    }
  }
}