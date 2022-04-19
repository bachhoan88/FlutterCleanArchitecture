import 'dart:convert';

import 'package:flutter_clean_architecture/src/data/local/pref/pref_helper.dart';
import 'package:flutter_clean_architecture/src/data/model/user_data_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPrefs extends PrefHelper {
  static const String firstRunKey = 'first_run_key';
  static const String tokenKey = 'token_key';
  static const String userKey = 'user_key';

  @override
  Future<bool> firstRun() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getBool(firstRunKey) ?? true;
  }

  @override
  Future<void> setFirstRun(bool isFirstRun) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setBool(firstRunKey, isFirstRun);
  }

  @override
  Future<String?> getToken() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(tokenKey);
  }

  @override
  Future setToken(String token) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(tokenKey, token);
  }

  @override
  Future<UserDataModel?> getUserSaved() async {
    final preferences = await SharedPreferences.getInstance();
    final userJson = preferences.getString(userKey);
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
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(userKey, user.toJson().toString());
  }
}