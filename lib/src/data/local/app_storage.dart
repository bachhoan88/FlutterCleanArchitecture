import 'package:flutter_clean_architecture/src/data/local/pref/app_pref.dart';
import 'package:flutter_clean_architecture/src/data/local/pref/pref_helper.dart';
import 'package:hive/hive.dart';

class AppStorage {
  static const _prefsBox = 'prefs';

  AppStorage._();

  static AppStorage init() {
    return AppStorage._();
  }

  Future<PrefHelper> prefHelper() async {
    return AppPrefs(prefBox: await Hive.openBox(_prefsBox));
  }
}
