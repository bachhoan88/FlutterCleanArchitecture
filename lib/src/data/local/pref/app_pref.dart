import 'package:river_movies/src/data/local/pref/pref_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPrefs extends PrefHelper {
  static const String firstRunKey = 'first_run_key';

  @override
  Future<bool> firstRun() async {
    var _preferences = await SharedPreferences.getInstance();
    return _preferences.getBool(firstRunKey) ?? true;
  }

  @override
  Future<void> setFirstRun(bool isFirstRun) {
    // TODO: implement setFirstRun
    throw UnimplementedError();
  }
}