import 'dart:convert';

import 'package:flutter_clean_architecture/src/data/local/pref/pref_helper.dart';
import 'package:flutter_clean_architecture/src/data/model/user_data_model.dart';
import 'package:hive/hive.dart';

class AppPrefs extends PrefHelper {
  static const String _firstRunKey = 'first_run_key';
  static const String _tokenKey = 'token_key';
  static const String _userKey = 'user_key';

  final Box _prefBox;
  AppPrefs({required Box prefBox}) : _prefBox = prefBox;

  @override
  Future<bool> firstRun() async {
    return _prefBox.get(_firstRunKey) ?? true;
  }

  @override
  Future<void> setFirstRun(bool isFirstRun) async {
    await _prefBox.put(_firstRunKey, isFirstRun);
  }

  @override
  Future<String?> getToken() async {
    return _prefBox.get(_tokenKey);
  }

  @override
  Future setToken(String token) async {
    await _prefBox.put(_tokenKey, token);
  }

  @override
  Future<UserDataModel?> getUserSaved() async {
    final userJson = _prefBox.get(_userKey);
    if (userJson != null) {
      try {
        return UserDataModel.fromJson(jsonDecode(userJson));
      } on Exception {
        return null;
      }
    }

    return const UserDataModel(username: 'hoanbn88', password: '123');
  }

  @override
  Future saveUser(UserDataModel user) async {
    await _prefBox.put(_userKey, user.toJson().toString());
  }
}