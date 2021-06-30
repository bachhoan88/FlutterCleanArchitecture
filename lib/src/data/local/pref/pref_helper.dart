import 'package:flutter_clean_architecture/src/data/model/user_data_model.dart';

abstract class PrefHelper {
  Future<bool> firstRun();

  Future<void> setFirstRun(bool isFirstRun);

  Future<String?> getToken();

  Future setToken(String token);

  Future saveUser(UserDataModel user);

  Future<UserDataModel?> getUserSaved();
}